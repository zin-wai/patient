// ignore_for_file: use_key_in_widget_constructors, unnecessary_new

import 'package:flutter/material.dart';

import './screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        // brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: new Login(),
    );
  }
}
