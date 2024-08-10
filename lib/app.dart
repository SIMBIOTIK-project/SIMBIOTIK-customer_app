import 'package:flutter/material.dart';
import 'package:simbiotik_customer/core/configs/app_config.dart';
import 'package:simbiotik_customer/core/routers/routers.dart';

Future<Widget> initializeApp(AppConfig config) async {
  WidgetsFlutterBinding.ensureInitialized();
  return MyApp(
    config: config,
  );
}

class MyApp extends StatelessWidget {
  final AppConfig config;
  final AppRouterConfig _appRouter = AppRouterConfig();
  MyApp({
    super.key,
    required this.config,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: config.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.router.routerDelegate,
      routeInformationParser: _appRouter.router.routeInformationParser,
      routeInformationProvider: _appRouter.router.routeInformationProvider,
    );
  }
}
