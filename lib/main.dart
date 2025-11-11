import 'package:flutter/material.dart';
import 'package:turbo/config/router/app_router.dart';
import 'package:turbo/config/router/routs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter().onGenerateRoute,
      initialRoute: Routs.login,
      home: const Scaffold(),
    );
  }
}