// Copyright 2024 SIMBIOTIK Developer
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:gap/gap.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simbiotik_customer/core/blocs/blocs.dart';
import 'package:simbiotik_customer/core/routers/routers.dart';
import 'package:simbiotik_customer/data/data.dart';
import 'package:simbiotik_customer/gen/assets.gen.dart';
import 'package:simbiotik_customer/models/models.dart';
import 'package:simbiotik_customer/utils/app_colors.dart';
import 'package:simbiotik_customer/utils/utils.dart';

class Homescreen extends StatelessWidget {
  final String? token;
  const Homescreen({
    this.token,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserBloc(UserRepository()),
        ),
        BlocProvider(
          create: (context) => DepositBloc(DepositRepository()),
        ),
        BlocProvider(
          create: (context) => WithdrawalBloc(WithdrawalRepository()),
        ),
      ],
      child: HomescreenContent(
        token: token,
      ),
    );
  }
}

class HomescreenContent extends StatefulWidget {
  final String? token;
  const HomescreenContent({
    this.token,
    super.key,
  });

  @override
  State<HomescreenContent> createState() => _HomescreenContentState();
}

class _HomescreenContentState extends State<HomescreenContent>
    with SingleTickerProviderStateMixin {
  String? _currentAddress;
  bool _isHidden = false;
  String idUser = '';

  List<DepositModel> listDeposit = [];
  int currentPage = 1;
  int totalPages = 1;
  bool isLoading = true;

  late TabController _tabController;

  int _selectedTabBarIndex = 0;
  final _selectedColor = Colors.teal;
  final _tabs = [
    const Tab(
      text: 'Setoran',
    ),
    const Tab(
      text: 'Penarikan',
    ),
  ];

  List<DepositModel> allDeposit = [];
  List<WithdrawalModel> allWithdrawal = [];

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    context.read<UserBloc>().add(UserEvent.fetch(token: widget.token!));
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state.status.isLoaded) {
            if (state.data?.idUser != null) {
              context.read<DepositBloc>().add(
                    DepositEvent.fetch(
                      token: widget.token!,
                      idUser: state.data?.idUser,
                      // page: 1,
                    ),
                  );
              context.read<DepositBloc>().add(
                    DepositEvent.fetchAll(
                      token: widget.token!,
                      idUser: state.data?.idUser,
                    ),
                  );
              context.read<WithdrawalBloc>().add(
                    WithdrawalEvent.fetch(
                      token: widget.token!,
                      idUser: state.data?.idUser,
                      page: 1,
                    ),
                  );
              context.read<WithdrawalBloc>().add(
                    WithdrawalEvent.fetchAll(
                      token: widget.token!,
                      idUser: state.data?.idUser,
                    ),
                  );
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      16.0,
                      60.0,
                      16.0,
                      16.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildNameandProfile(
                          context,
                          state.data!,
                        ),
                        _buildLocation(context),
                      ],
                    ),
                  ),
                  Expanded(
                    child: CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                16.0,
                                0.0,
                                16.0,
                                8.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildTotalBalance(
                                    context,
                                  ),
                                  const Text(
                                    'Ringkasan',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Gap(8.0),
                                  _buildOverviewContent(
                                    context,
                                  )
                                ],
                              )),
                        ),
                        SliverStickyHeader(
                          header: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                16.0,
                                0.0,
                                16.0,
                                16.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Data Riwayat',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Gap(8),
                                      Text(
                                        '*Hanya menampilkan 10 data setoran terakhir',
                                        style: TextStyle(
                                          fontSize: 8,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      )
                                    ],
                                  ),
                                  const Gap(8.0),
                                  Container(
                                    height: kToolbarHeight - 20.0,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: TabBar(
                                      controller: _tabController,
                                      onTap: (index) {
                                        setState(() {
                                          _selectedTabBarIndex = index;
                                        });
                                      },
                                      tabs: _tabs,
                                      indicator: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          color: _selectedColor),
                                      labelColor: Colors.white,
                                      indicatorPadding: EdgeInsets.zero,
                                      dividerColor: Colors.transparent,
                                      indicatorSize: TabBarIndicatorSize.tab,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          sliver: SliverToBoxAdapter(
                            child: _selectedTabBarIndex == 0
                                ? BlocBuilder<DepositBloc, DepositState>(
                                    builder: (context, state) {
                                      if (state.status.isLoading) {
                                        return const Center(
                                          heightFactor: 8,
                                          child: CircularProgressIndicator(),
                                        );
                                      } else if (state.status.isLoaded) {
                                        List<DepositModel> allList =
                                            state.allData ?? [];
                                        return Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                            16.0,
                                            0,
                                            16.0,
                                            40,
                                          ),
                                          child: ListView.separated(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemBuilder: (context, index) {
                                              return _buildListHistoryDeposit(
                                                  context, allList[index]);
                                            },
                                            separatorBuilder: (context, index) {
                                              return const Gap(16.0);
                                            },
                                            itemCount: allList.length >= 10
                                                ? 10
                                                : allList.length,
                                          ),
                                        );
                                      }

                                      return Container();
                                    },
                                  )
                                : BlocBuilder<WithdrawalBloc, WithdrawalState>(
                                    builder: (context, state) {
                                      if (state.status.isLoading) {
                                        return const Center(
                                          heightFactor: 8,
                                          child: CircularProgressIndicator(),
                                        );
                                      } else if (state.status.isLoaded) {
                                        List<WithdrawalModel> allList =
                                            state.allData ?? [];
                                        return Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                            16.0,
                                            0,
                                            16.0,
                                            40,
                                          ),
                                          child: ListView.separated(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemBuilder: (context, index) {
                                              return _buildListHistoryWithdrawal(
                                                  context, allList[index]);
                                            },
                                            separatorBuilder: (context, index) {
                                              return const Gap(16.0);
                                            },
                                            itemCount: allList.length >= 10
                                                ? 10
                                                : allList.length,
                                          ),
                                        );
                                      }

                                      return Container();
                                    },
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              const Center(
                child: Text('Data Nasabah Tidak Diketahui!'),
              );
            }
          } else if (state.status.isError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error.toString()),
              ),
            );
          } else {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget _buildTotalBalance(
    BuildContext context,
  ) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.teal, borderRadius: BorderRadius.circular(8.0)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 20.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Assets.images.cash.image(
                  width: 100,
                  height: 100,
                ),
                const Gap(16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Total Saldo',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Gap(4.0),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _isHidden = !_isHidden;
                            });
                          },
                          child: Icon(
                            _isHidden ? Icons.visibility : Icons.visibility_off,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    BlocBuilder<DepositBloc, DepositState>(
                      builder: (context, state) {
                        if (state.status.isLoading) {
                          return const SizedBox(
                            height: 50,
                            width: 50,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        } else if (state.status.isLoaded) {
                          allDeposit = state.allData ?? [];
                          return BlocBuilder<WithdrawalBloc, WithdrawalState>(
                            builder: (context, state2) {
                              if (state2.status.isLoading) {
                                return const SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                );
                              } else if (state2.status.isLoaded) {
                                allWithdrawal = state2.allData ?? [];
                                final totalDepositPrice =
                                    allDeposit.fold<double>(0, (sum, deposit) {
                                  return sum + double.parse(deposit.price!);
                                });
                                final totalWithdrawalPrice = allWithdrawal
                                    .fold<double>(0, (sum, withdrawal) {
                                  return sum + double.parse(withdrawal.price!);
                                });
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _isHidden
                                          ? '*******'
                                          : formatCurrency(
                                              (totalDepositPrice -
                                                  totalWithdrawalPrice),
                                            ),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Update Terakhir: ${formattedDate(DateTime.now().toString())}',
                                      style: const TextStyle(
                                          fontSize: 9,
                                          fontStyle: FontStyle.italic,
                                          color: Colors.white),
                                    )
                                  ],
                                );
                              }
                              return Container();
                            },
                          );
                        }
                        return Container();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 4,
            right: 16,
            child: Text(
              '* Jumlah saldo diakumulasi otomatis',
              style: TextStyle(
                  fontSize: 9,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildOverviewContent(
    BuildContext context,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildDeposit(
          context,
        ),
        const Gap(8.0),
        _buildWithdrawal(
          context,
        )
      ],
    );
  }

  _buildDeposit(
    BuildContext context,
  ) {
    return Expanded(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.black12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Setoran',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.price_check,
                    size: 20,
                    color: Colors.green,
                  )
                ],
              ),
              BlocBuilder<DepositBloc, DepositState>(
                builder: (context, state) {
                  if (state.status.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state.status.isLoaded) {
                    if (state.allData != null &&
                        state.allData?.isNotEmpty == true) {
                      Logger().i(allDeposit);
                      double lastDeposit = (state.allData != null &&
                              state.allData?.isNotEmpty == true)
                          ? double.parse(state.allData!.first.price.toString())
                          : 0;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              _isHidden
                                  ? '*******'
                                  : formatCurrency(lastDeposit),
                              style: const TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Gap(4),
                          Text(
                            'Setoran Terakhir: ${state.allData != null ? formattedDate(state.allData!.first.createdAt.toString()) : ''}',
                            style: const TextStyle(
                                fontSize: 8.0, fontStyle: FontStyle.italic),
                          )
                        ],
                      );
                    } else {
                      return const Center(child: Text('Tidak ada data'));
                    }
                  }
                  return Container();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildWithdrawal(
    BuildContext context,
  ) {
    return Expanded(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.black12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Penarikan',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.price_check,
                    size: 20,
                    color: Colors.red,
                  )
                ],
              ),
              BlocBuilder<WithdrawalBloc, WithdrawalState>(
                builder: (context, state) {
                  if (state.status.isLoading) {
                    return const Center(
                      child: SizedBox(child: CircularProgressIndicator()),
                    );
                  } else if (state.status.isLoaded) {
                    if (state.allData != null &&
                        state.allData?.isNotEmpty == true) {
                      double lastWithdrawal = (state.allData != null &&
                              state.allData?.isNotEmpty == true)
                          ? double.parse(state.allData!.first.price.toString())
                          : 0;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              _isHidden
                                  ? '*******'
                                  : formatCurrency(lastWithdrawal),
                              style: const TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Gap(4),
                          Text(
                            'Penarikan Terakhir:  ${state.allData != null ? formattedDate(state.allData!.first.createdAt.toString()) : ''}',
                            style: const TextStyle(
                                fontSize: 8.0, fontStyle: FontStyle.italic),
                          ),
                        ],
                      );
                    } else {
                      return const Center(
                        child: Text('Tidak ada data'),
                      );
                    }
                  }
                  return Container();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNameandProfile(BuildContext context, UserModel user) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, ${user.name}',
              style: const TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              'Selamat Datang Kembali!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        InkWell(
          child: CircleAvatar(
            radius: 24,
            backgroundColor: getRandomColor(),
            child: Text(
              getInitials(user.name ?? '-'),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          onTap: () async {
            bool? result = await GoRouter.of(context).pushNamed(
              AppRouterConstants.detailUser,
              extra: user,
            );

            if (result == true) {
              GoRouter.of(context).pushReplacement(
                '/',
              );
              _logout(context);
            }
          },
        ),
      ],
    );
  }

  Widget _buildLocation(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_pin,
          size: 14,
          color: Colors.redAccent,
        ),
        const Gap(4),
        Text(
          _currentAddress ?? 'Mencari lokasi..',
          style: const TextStyle(fontSize: 12.0),
        )
      ],
    );
  }

  Future<void> _getCurrentLocation() async {
    Position? position = await LocationHandler.getCurrentPosition();
    if (position != null) {
      String? address = await LocationHandler.getAddressFromLatLang(position);
      if (mounted) {
        setState(() {
          _currentAddress = address ?? 'Lokasi tidak ditemukan';
        });
      }
    } else {
      if (mounted) {
        setState(() {
          _currentAddress = 'Tidak dapat mengakses lokasi';
        });
      }
    }
  }

  _buildListHistoryDeposit(BuildContext context, DepositModel deposit) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Jumlah Setoran',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  formatCurrency(double.parse(deposit.price!)),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
            const Gap(8),
            _buildRowText(
              context,
              'Berat',
              '${deposit.weight} kg',
            ),
            const Gap(8),
            _buildRowText(
              context,
              'Jenis Sampah',
              '${deposit.wasteType?.type}',
            ),
            const Gap(8),
            _buildRowText(
              context,
              'Tanggal Setoran',
              formattedDate(deposit.createdAt.toString()),
            ),
          ],
        ),
      ),
    );
  }

  _buildListHistoryWithdrawal(
      BuildContext context, WithdrawalModel withdarawal) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Jumlah Penarikan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  formatCurrency(double.parse(withdarawal.price!)),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
            const Gap(8),
            _buildRowText(
              context,
              'Status',
              '${withdarawal.status}',
            ),
            const Gap(8),
            _buildRowText(
              context,
              'Tanggal Setoran',
              formattedDate(withdarawal.createdAt.toString()),
            ),
          ],
        ),
      ),
    );
  }

  _buildRowText(
    BuildContext context,
    String title,
    String value,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  void _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }
}
