import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:simbiotik_customer/app.dart';
import 'package:simbiotik_customer/core/configs/app_config.dart';
import 'package:simbiotik_customer/core/configs/flavor_type.dart';
import 'package:simbiotik_customer/firebase_options.dart';

Future main() async {
  final devAppConfig = AppConfig(
    appName: 'SIMBIOTIK Access',
    flavorType: FlavorType.prod,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await dotenv.load(fileName: ".env");
  Widget app = await initializeApp(devAppConfig);
  runApp(app);
}
