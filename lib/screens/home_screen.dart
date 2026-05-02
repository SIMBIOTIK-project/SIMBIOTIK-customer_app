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
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simbiotik_customer/core/blocs/blocs.dart';
import 'package:simbiotik_customer/core/blocs/sodako/sodako.dart';
import 'package:simbiotik_customer/core/routers/routers.dart';
import 'package:simbiotik_customer/data/data.dart';
import 'package:simbiotik_customer/data/repository/sodako_repository.dart';
import 'package:simbiotik_customer/gen/assets.gen.dart';
import 'package:simbiotik_customer/models/models.dart';
import 'package:simbiotik_customer/models/sodakos/sodako_request_model.dart';
import 'package:simbiotik_customer/utils/app_colors.dart';
import 'package:simbiotik_customer/utils/utils.dart';

class Homescreen extends StatelessWidget {
  final AuthResponse? data;
  const Homescreen({
    this.data,
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
        BlocProvider(
          create: (context) => BalanceBloc(BalanceRepository()),
        ),
        BlocProvider(
          create: (context) => SodakoBloc(SodakoRepository()),
        )
      ],
      child: HomescreenContent(
        data: data,
      ),
    );
  }
}

class HomescreenContent extends StatefulWidget {
  final AuthResponse? data;
  const HomescreenContent({
    this.data,
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
    const Tab(
      text: 'Sodakoh',
    ),
  ];

  String? token;
  List<DepositModel> allDeposit = [];

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    _fetchDepositData(widget.data?.token, widget.data?.user.idUser);
    _fetchWithdrawalData(widget.data?.token, widget.data?.user.idUser);
    _fetchBalanceData(widget.data?.token, widget.data?.user.idUser);
    _fetchSodakoData(widget.data?.token, widget.data?.user.idUser);
    _tabController = TabController(length: 3, vsync: this);
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
      body: MultiBlocListener(
        listeners: [
          BlocListener<SodakoBloc, SodakoState>(
            listener: (context, state) {
              if (state.status.isError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.error.toString()),
                    backgroundColor: Colors.red,
                  ),
                );
              } else if (state.status.isSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Sodakoh berhasil diberikan!'),
                    backgroundColor: Colors.green,
                  ),
                );
                _fetchDepositData(widget.data?.token, widget.data?.user.idUser);
                _fetchBalanceData(widget.data?.token, widget.data?.user.idUser);
                _fetchWithdrawalData(
                    widget.data?.token, widget.data?.user.idUser);
                _fetchSodakoData(widget.data?.token, widget.data?.user.idUser);
              }
            },
          )
        ],
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            16.0,
            32.0,
            16.0,
            16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildNameandProfile(
                context,
                widget.data?.user,
              ),
              _buildLocation(context),
            ],
          ),
        ),
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async {
              _fetchDepositData(widget.data?.token, widget.data?.user.idUser);
              _fetchWithdrawalData(
                  widget.data?.token, widget.data?.user.idUser);
              _fetchBalanceData(widget.data?.token, widget.data?.user.idUser);
              _fetchSodakoData(widget.data?.token, widget.data?.user.idUser);
            },
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
                          ),
                          const Gap(8.0),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                if (widget.data != null) {
                                  showCreateDialog(
                                    context,
                                    widget.data!.token,
                                    widget.data!.user.idUser!,
                                  );
                                }
                              },
                              label: const Text(
                                'Sodakoh',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              icon: const Icon(
                                Icons.volunteer_activism,
                                size: 16,
                                color: Colors.orange,
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
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
                                  borderRadius: BorderRadius.circular(8.0),
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
                                    state.data?.result?.data ?? [];

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
                        : _selectedTabBarIndex == 1
                            ? BlocBuilder<WithdrawalBloc, WithdrawalState>(
                                builder: (context, state) {
                                  if (state.status.isLoading) {
                                    return const Center(
                                      heightFactor: 8,
                                      child: CircularProgressIndicator(),
                                    );
                                  } else if (state.status.isLoaded) {
                                    List<WithdrawalModel> allList =
                                        state.data?.result?.data ?? [];
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
                              )
                            : _buildSodakoList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
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
                    BlocBuilder<BalanceBloc, BalanceState>(
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
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _isHidden
                                    ? '*******'
                                    : formatCurrency(
                                        state.data?.result?.saldo ?? 0,
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
              '* Jumlah saldo diakumulasi otomatis termasuk sodakoh yang anda berikan!',
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
              BlocBuilder<BalanceBloc, BalanceState>(
                builder: (context, state) {
                  if (state.status.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state.status.isLoaded) {
                    if (state.data != null) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              _isHidden
                                  ? '*******'
                                  : formatCurrency(
                                      state.data?.result?.totalDeposit ?? 0),
                              style: const TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Gap(4),
                          Text(
                            'Update Terakhir: ${formattedDate(DateTime.now().toString())}',
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
              BlocBuilder<BalanceBloc, BalanceState>(
                builder: (context, state) {
                  if (state.status.isLoading) {
                    return const Center(
                      child: SizedBox(child: CircularProgressIndicator()),
                    );
                  } else if (state.status.isLoaded) {
                    if (state.data != null) {
                      double lastWithdrawal =
                          state.data?.result?.totalWithdrawal ?? 0;
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
                            'Update Terakhir:  ${formattedDate(DateTime.now().toString())}',
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

  Widget _buildNameandProfile(BuildContext context, UserModel? user) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, ${user?.name ?? '-'}',
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
              getInitials(user?.name ?? '-'),
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
                  formatCurrency(double.parse(deposit.price!.toString())),
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
                  formatCurrency(double.parse(withdarawal.price!.toString())),
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

  Widget _buildSodakoList() {
    return BlocBuilder<SodakoBloc, SodakoState>(
      builder: (context, state) {
        if (state.status.isLoading) {
          return const Center(
            heightFactor: 8,
            child: CircularProgressIndicator(),
          );
        } else if (state.status.isLoaded) {
          final list = state.data?.result?.data ?? [];
          print(
              'Sodako List: $list'); // Debug print untuk melihat jumlah data sodako

          return Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 40),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: list.length >= 10 ? 10 : list.length,
              separatorBuilder: (_, __) => const Gap(16),
              itemBuilder: (context, index) {
                final item = list[index];

                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Jumlah Sodakoh',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              formatCurrency(item.price ?? 0),
                              style: const TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Gap(8),
                        _buildRowText(
                          context,
                          'Tanggal',
                          formattedDate(item.createdAt.toString()),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }

        return const SizedBox();
      },
    );
  }

  void showCreateDialog(BuildContext context, String token, String idUser) {
    final priceController = TextEditingController();

    final sodakoBloc = context.read<SodakoBloc>();

    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('Tambah Sodakoh'),
          content: TextField(
            controller: priceController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Sodakoh (Rp)',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Batal'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: () {
                final price = double.tryParse(priceController.text);
                if (price == null) return;

                final request = SodakoRequestModel(
                  idUser: idUser,
                  price: price,
                );

                sodakoBloc.add(
                  SodakoEvent.create(
                    token: token,
                    request: request,
                  ),
                );

                Navigator.pop(context);
              },
              child: const Text(
                'Simpan',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  void _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }

  void _fetchDepositData(String? token, String? idUser) {
    if (token != null && idUser != null) {
      context.read<DepositBloc>().add(
            DepositEvent.fetch(
              token: token,
              idUser: idUser,
              page: 1,
            ),
          );
    }
  }

  void _fetchWithdrawalData(String? token, String? idUser) {
    if (token != null && idUser != null) {
      context.read<WithdrawalBloc>().add(
            WithdrawalEvent.fetch(
              token: token,
              idUser: idUser,
              page: 1,
            ),
          );
    }
  }

  void _fetchBalanceData(String? token, String? idUser) {
    if (token != null && idUser != null) {
      context.read<BalanceBloc>().add(
            BalanceEvent.fetch(
              token: token,
              idUser: idUser,
            ),
          );
    }
  }

  void _fetchSodakoData(String? token, String? idUser) {
    if (token != null && idUser != null) {
      context.read<SodakoBloc>().add(
            SodakoEvent.fetch(
              token: token,
              idUser: idUser,
              page: 1,
            ),
          );
    }
  }
}
