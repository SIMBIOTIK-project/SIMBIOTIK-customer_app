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
import 'package:go_router/go_router.dart';
import 'package:simbiotik_customer/core/blocs/auth/auth_bloc.dart';
import 'package:simbiotik_customer/core/blocs/blocs.dart';
import 'package:simbiotik_customer/core/routers/routers.dart';
import 'package:simbiotik_customer/data/data.dart';
import 'package:simbiotik_customer/gen/assets.gen.dart';
import 'package:simbiotik_customer/models/models.dart';
import 'package:simbiotik_customer/utils/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginScreenContent();
  }
}

class LoginScreenContent extends StatefulWidget {
  const LoginScreenContent({super.key});

  @override
  State<LoginScreenContent> createState() => _LoginScreenContentState();
}

class _LoginScreenContentState extends State<LoginScreenContent> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool? _rememberMe = false;
  bool _obsecurePassword = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(AuthRepository()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Assets.images.simbiotik2.image(
                  width: 40,
                  height: 40,
                ),
                const Text(
                  'Selamat Datang',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      'SIMBIO',
                      style: TextStyle(
                        color: AppColors.hijauSimbiotik,
                        fontWeight: FontWeight.w900,
                        fontSize: 28,
                      ),
                    ),
                    Text(
                      'TIK',
                      style: TextStyle(
                        color: AppColors.biruSimbiotik,
                        fontWeight: FontWeight.w900,
                        fontSize: 28,
                      ),
                    ),
                    Gap(8.0),
                    Text(
                      'Access',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 24,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                const Text(
                  'SIMBIOTIK Access adalah aplikasi mobile yang dirancang khusus untuk nasabah, memungkinkan Anda untuk dengan mudah mengakses saldo rekening dan memantau riwayat transaksi kapan saja dan di mana saja',
                  style: TextStyle(
                    fontSize: 8,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const Gap(20),
                const Text(
                  'Masuk',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Gap(8.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(
                      8.0,
                    ),
                  ),
                  height: 40,
                  padding: const EdgeInsets.fromLTRB(
                    8,
                    4,
                    8,
                    4,
                  ),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      hintText: 'Masukkan Email',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 8.0,
                      ),
                    ),
                  ),
                ),
                const Gap(8.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(
                      8.0,
                    ),
                  ),
                  height: 40.0,
                  padding: const EdgeInsets.fromLTRB(
                    8,
                    4,
                    8,
                    4,
                  ),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        hintText: 'Masukkan Password',
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _obsecurePassword = !_obsecurePassword;
                            });
                          },
                          child: Icon(
                            _obsecurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            size: 20,
                          ),
                        )),
                    obscureText: _obsecurePassword,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      'Ingat Saya',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    Checkbox(
                      activeColor: Colors.lightBlue,
                      value: _rememberMe,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _rememberMe = newValue ?? false;
                          if (_rememberMe == true) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text('Fitur masih dalam pengembangan!'),
                              ),
                            );
                          }
                        });
                      },
                    ),
                  ],
                ),
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state.status.isLoaded) {
                      if (state.data?.status == StatusUser.nasabah.value) {
                        GoRouter.of(context).pushReplacement(
                          AppRouterConstants.homeScreen,
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'Silahkan masuk menggunakan akun nasabah!'),
                          ),
                        );
                      }
                    } else if (state.status.isError) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                              'Gagal masuk, silahkan periksa kembali email atau password!'),
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    if (state.status.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    return SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.hijauSimbiotik,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            )),
                        onPressed: () {
                          context.read<AuthBloc>().add(
                                AuthEvent.login(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                ),
                              );
                        },
                        child: const Text(
                          'Masuk',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const Gap(8.0),
                const Row(
                  children: [
                    Expanded(child: Divider()),
                    Gap(8.0),
                    Text(
                      'Belum ada akun?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(8.0),
                    Expanded(child: Divider()),
                  ],
                ),
                const Gap(8.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.biruSimbiotik,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                              'Fitur pendaftaran belum tersedia. Pendaftaran akun masih dilakukan oleh admin!'),
                        ),
                      );
                    },
                    child: const Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
