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
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:simbiotik_customer/core/blocs/auth/register_bloc.dart';
import 'package:simbiotik_customer/data/repository/register_repository.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(
        RegisterRepository(),
      ),
      child: const RegisterScreenContent(),
    );
  }
}

class RegisterScreenContent extends StatefulWidget {
  const RegisterScreenContent({
    super.key,
  });

  @override
  State<RegisterScreenContent> createState() => _RegisterScreenContentState();
}

class _RegisterScreenContentState extends State<RegisterScreenContent> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _passwordConfirmation = TextEditingController();
  final TextEditingController _nik = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _address = TextEditingController();

  List<String> status = [
    'nasabah',
  ];

  bool _obsecurePassword = true;
  bool _obsecurePasswordConfirmation = true;

  String? selectStatusItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Registrasi Nasabah',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'Nama',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              const Gap(4),
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
                  controller: _name,
                  decoration: const InputDecoration(
                    hintText: 'Masukkan Nama',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                  ),
                ),
              ),
              const Gap(8),
              const Row(
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              const Gap(4),
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
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Masukkan Email',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                  ),
                ),
              ),
              const Gap(8),
              const Row(
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              const Gap(4),
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
                  // controller: _password,
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
                  onChanged: (value) {
                    setState(() {
                      _password.text = value;
                    });
                  },
                ),
              ),
              const Gap(8),
              const Row(
                children: [
                  Text(
                    'Konfirmasi Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              const Gap(4),
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
                  // controller: _passwordConfirmation,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Password Konfirmasi',
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          _obsecurePasswordConfirmation =
                              !_obsecurePasswordConfirmation;
                        });
                      },
                      child: Icon(
                        _obsecurePasswordConfirmation
                            ? Icons.visibility_off
                            : Icons.visibility,
                        size: 20,
                      ),
                    ),
                  ),
                  obscureText: _obsecurePasswordConfirmation,
                  onChanged: (value) {
                    setState(() {
                      _passwordConfirmation.text = value;
                    });
                  },
                ),
              ),
              if (_passwordConfirmation.text != _password.text)
                const Text(
                  'Password tidak sesuai!',
                  style: TextStyle(color: Colors.red),
                ),
              const Gap(8),
              const Row(
                children: [
                  Text(
                    'NIK',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              const Gap(4),
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
                  controller: _nik,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(
                        RegExp(r'^[0-9]*[.,]?[0-9]*$')),
                  ],
                  decoration: const InputDecoration(
                    hintText: 'Masukkan NIK',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                  ),
                ),
              ),
              const Gap(8),
              const Row(
                children: [
                  Text(
                    'Nomor Telepon',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              const Gap(4),
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
                  controller: _phoneNumber,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(
                        RegExp(r'^[0-9]*[.,]?[0-9]*$')),
                  ],
                  decoration: const InputDecoration(
                    hintText: 'Masukkan Nomor Telepon',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                  ),
                ),
              ),
              const Gap(8),
              const Row(
                children: [
                  Text(
                    'Alamat',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              const Gap(4),
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
                  controller: _address,
                  decoration: const InputDecoration(
                    hintText: 'Masukkan Alamat',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                  ),
                ),
              ),
              const Gap(8),
              const Row(
                children: [
                  Text(
                    'Status',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              const Gap(4),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                  ),
                  borderRadius: BorderRadius.circular(
                    8.0,
                  ),
                ),
                child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(8.0),
                  underline: const SizedBox.shrink(),
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  isExpanded: true,
                  hint: const Text(
                    'Pilih jenis registrasi',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  value: selectStatusItem,
                  items: status.map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectStatusItem = value;
                    });
                  },
                ),
              ),
              const Gap(40),
              BlocConsumer<RegisterBloc, RegisterState>(
                listener: (context, state) {
                  if (state.status.isLoading) {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext dialogContext) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                  } else if (state.status.isLoaded) {
                    Navigator.of(context).pop(true);
                    Navigator.of(context).pop(true);
                    Navigator.of(context).pop(true);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Akun baru berhasil ditambahkan!'),
                      ),
                    );
                  } else if (state.status.isError) {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Gagal menambahkan akun!'),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  return SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                      onPressed: (_name.text.isNotEmpty &&
                              _email.text.isNotEmpty &&
                              _password.text.isNotEmpty &&
                              _passwordConfirmation.text.isNotEmpty &&
                              _nik.text.isNotEmpty &&
                              _phoneNumber.text.isNotEmpty &&
                              _address.text.isNotEmpty &&
                              selectStatusItem != null &&
                              (_password.text == _passwordConfirmation.text))
                          ? () {
                              showDialog(
                                context: context,
                                builder: (BuildContext dialogContext) {
                                  return AlertDialog(
                                    title: const Text('Registrasi Nasabah'),
                                    content: const Text(
                                        'Apakah anda yakin akan menyimpan data?'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          context
                                              .read<RegisterBloc>()
                                              .add(RegisterEvent.register(
                                                name: _name.text,
                                                email: _email.text,
                                                password: _password.text,
                                                passwordConfirmation:
                                                    _passwordConfirmation.text,
                                                nik: _nik.text,
                                                phoneNumber: _phoneNumber.text,
                                                address: _address.text,
                                                status: selectStatusItem!,
                                              ));
                                        },
                                        child: const Text('Ya, Simpan'),
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
                            }
                          : null,
                      child: const Text(
                        'Daftar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
