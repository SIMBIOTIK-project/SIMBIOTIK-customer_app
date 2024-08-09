import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:simbiotik_customer/app.dart';
import 'package:simbiotik_customer/core/configs/app_config.dart';
import 'package:simbiotik_customer/core/configs/flavor_type.dart';

Future main() async {
  final devAppConfig = AppConfig(
    appName: 'SIMBIOTIK Access DEV',
    flavorType: FlavorType.dev,
  );
  await dotenv.load(fileName: ".dev.env");
  Widget app = await initializeApp(devAppConfig);
  runApp(app);
}
