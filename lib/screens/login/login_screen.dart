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
import 'package:google_fonts/google_fonts.dart';
import 'package:simbiotik_customer/core/blocs/auth/auth_bloc.dart';
import 'package:simbiotik_customer/core/blocs/blocs.dart';
import 'package:simbiotik_customer/core/routers/routers.dart';
import 'package:simbiotik_customer/data/data.dart';
import 'package:simbiotik_customer/gen/assets.gen.dart';
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
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(AuthRepository()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(40),
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
              const Gap(50),
              const Text(
                'Masuk',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(labelText: 'Email'),
                    ),
                    TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(labelText: 'Password'),
                      obscureText: true,
                    ),
                    const Gap(16.0),
                    BlocConsumer<AuthBloc, AuthState>(
                      listener: (context, state) {
                        if (state.status.isLoaded) {
                          GoRouter.of(context).pushReplacement(
                            AppRouterConstants.homeScreen,
                          );
                        } else if (state.status.isError) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(state.error ?? 'Login failed')),
                          );
                        }
                      },
                      builder: (context, state) {
                        if (state.status.isLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        return ElevatedButton(
                          onPressed: () {
                            context.read<AuthBloc>().add(
                                  AuthEvent.login(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                  ),
                                );
                          },
                          child: const Text('Login'),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
