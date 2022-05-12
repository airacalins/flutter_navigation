// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_playground/routes/routes.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(
                RouteManager.loginScreen,
              ),
              child: Text('Login'),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(
                RouteManager.registerScreen,
                arguments: {'name': 'Aira'},
              ),
              child: Text('Register'),
            )
          ],
        ),
      ),
    );
  }
}
