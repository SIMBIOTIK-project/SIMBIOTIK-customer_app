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
import 'package:simbiotik_customer/core/blocs/auth/logout_bloc.dart';
import 'package:simbiotik_customer/data/repository/logout_repository.dart';
import 'package:simbiotik_customer/models/models.dart';
import 'package:simbiotik_customer/utils/app_colors.dart';
import 'package:simbiotik_customer/utils/utils.dart';

class DetailUserScreen extends StatelessWidget {
  final UserModel user;
  const DetailUserScreen({
    required this.user,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogoutBloc(LogoutRepository()),
      child: DetailUserScreenContent(
        user: user,
      ),
    );
  }
}

class DetailUserScreenContent extends StatefulWidget {
  final UserModel user;
  const DetailUserScreenContent({
    required this.user,
    super.key,
  });

  @override
  State<DetailUserScreenContent> createState() =>
      _DetailUserScreenContentState();
}

class _DetailUserScreenContentState extends State<DetailUserScreenContent> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LogoutBloc, LogoutState>(
      listener: (context, state) {
        if (state.status.isLoaded) {
          Navigator.of(context).pop(true);
          Navigator.of(context).pop(true);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Detail Nasabah',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildNameandProfile(
                        context,
                        widget.user,
                      ),
                      const Gap(20),
                      _buildRowText(
                        context,
                        'User ID',
                        widget.user.idUser ?? '-',
                      ),
                      const Gap(8.0),
                      _buildRowText(
                        context,
                        'Email',
                        widget.user.email ?? '-',
                      ),
                      const Gap(8.0),
                      _buildRowText(
                        context,
                        'NIK',
                        widget.user.nik ?? '-',
                      ),
                      const Gap(8.0),
                      _buildRowText(
                        context,
                        'Nomor Telepon',
                        widget.user.phoneNumber ?? '-',
                      ),
                      const Gap(8.0),
                      _buildRowText(
                        context,
                        'Alamat',
                        widget.user.address ?? '-',
                      ),
                      const Gap(8.0),
                      _buildRowText(
                        context,
                        'Status',
                        widget.user.status ?? '-',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          title: const Text('Keluar'),
                          content: const Text(
                              'Apakah anda yakin akan keluar dari aplikasi?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                context.read<LogoutBloc>().add(
                                      const LogoutEvent.logout(),
                                    );
                              },
                              child: const Text('Ya, Keluar'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(dialogContext).pop();
                              },
                              child: const Text('Tidak'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text(
                    'Keluar',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNameandProfile(BuildContext context, UserModel user) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: getRandomColor(),
          child: Text(
            getInitials(user.name ?? '-'),
            style: const TextStyle(color: Colors.white),
          ),
        ),
        const Gap(8.0),
        Text(
          '${widget.user.name}',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
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
}
