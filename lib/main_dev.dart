import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'resources/app_config.dart';

void main() async {
  AppConfig.create(
    appName: "Dev Flavor Example",
    baseUrl: "https://dev.avinash.com",
    primaryColor: Colors.blue,
    flavor: Flavor.dev,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Production',
      theme: ThemeData(
        primarySwatch: AppConfig.shared.primaryColor,
      ),
      home: HomePage(),
    );
  }
}
