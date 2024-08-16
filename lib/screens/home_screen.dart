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
import 'package:gap/gap.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
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

class _HomescreenContentState extends State<HomescreenContent> {
  String? _currentAddress;
  bool _isHidden = false;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    context.read<UserBloc>().add(UserEvent.fetch(token: widget.token!));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state.status.isLoaded) {
          if (state.data?.idUser != null) {
            context.read<DepositBloc>().add(DepositEvent.fetch(
                  token: widget.token!,
                  idUser: state.data?.idUser,
                  page: 1,
                ));
            return Scaffold(
              body: Padding(
                padding: const EdgeInsets.fromLTRB(
                  16.0,
                  60.0,
                  16.0,
                  16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildNameandProfile(context, state.data!),
                    _buildLocation(context),
                    const Gap(20.0),
                    _buildTotalBalance(context),
                    const Gap(8.0),
                    const Text(
                      'Ringkasan',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(8.0),
                    _buildOverviewContent(context),
                    const Gap(8.0),
                    const Text(
                      'Data Riwayat',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
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
    );
  }

  Widget _buildTotalBalance(BuildContext context) {
    double saldo = 999999999;
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
                    Text(
                      _isHidden ? '*******' : formatCurrency(saldo),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Update Terakhir: 1 Agustus 2024',
                      style: TextStyle(
                          fontSize: 9,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    )
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

  Widget _buildOverviewContent(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<DepositBloc, DepositState>(
          builder: (context, state) {
            if (state.status.isLoaded) {
              List<DepositModel> list = state.data?.result?.data ?? [];
              double lastDeposit = list.isNotEmpty
                  ? double.parse(list.last.price.toString())
                  : 0;
              return _buildDeposit(
                context,
                lastDeposit,
                list.last.createdAt.toString(),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
        const Gap(8.0),
        Expanded(
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
                  Expanded(
                    child: Center(
                      child: Text(
                        _isHidden ? '*******' : formatCurrency(2000000),
                        style: const TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Text(
                    'Penarikan Terakhir: 1 Agustus 2024',
                    style:
                        TextStyle(fontSize: 8.0, fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  _buildDeposit(
    BuildContext context,
    double price,
    String date,
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
              Expanded(
                child: Center(
                  child: Text(
                    _isHidden ? '*******' : formatCurrency(price),
                    style: const TextStyle(
                        fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Text(
                'Setoran Terakhir: ${formattedDate(date)}',
                style:
                    const TextStyle(fontSize: 8.0, fontStyle: FontStyle.italic),
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
          onTap: () {
            GoRouter.of(context).pushNamed(
              AppRouterConstants.detailUser,
              extra: user,
            );
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
}
