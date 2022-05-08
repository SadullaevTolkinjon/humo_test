import 'package:flutter/material.dart';
import 'package:humo_test_app/core/utils/main_theme.dart';
import 'package:humo_test_app/core/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Humo test",
      debugShowCheckedModeBanner: false,
      theme: MainTheme.light,
      initialRoute: "/",
      onGenerateRoute: (settings) => RouterGenerator.onGenerateRoutes(settings),
    );
  }
}
