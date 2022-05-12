// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_playground/screens/home_screen.dart';
import 'package:flutter_playground/screens/login_screen.dart';
import 'package:flutter_playground/screens/register_screen.dart';

class RouteManager {
  static const String loginScreen = LoginScreen.route;
  static const String registerScreen = RegisterScreen.route;
  static const String homeScreen = HomeScreen.route;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    var valuePassed;

    if (settings.arguments != null) {
      valuePassed = settings.arguments as Map<String, dynamic>;
    }

    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      case registerScreen:
        return MaterialPageRoute(
          builder: (context) => RegisterScreen(
            name: valuePassed['name'],
          ),
        );

      default:
        throw FormatException('Route not found!');
    }
  }
}
