import 'package:flutter/material.dart';
import 'package:humo_test_app/views/home/view/home_page_view.dart';

class RouterGenerator {
  static onGenerateRoutes(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}
