import 'package:flutter/material.dart';
import 'package:simbiotik_customer/core/configs/app_config.dart';

Future<Widget> initializeApp(AppConfig config) async {
  WidgetsFlutterBinding.ensureInitialized();
  return MyApp(
    config: config,
  );
}

class MyApp extends StatelessWidget {
  final AppConfig config;
  const MyApp({
    super.key,
    required this.config,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: config.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(),
    );
  }
}
