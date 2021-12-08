import 'package:flutter/material.dart';

import 'Screens/dashboard.dart';
import 'Screens/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HR_APP",
      home: LoginScreen(),
    );
  }
}
