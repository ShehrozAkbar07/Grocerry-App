import 'package:flutter/material.dart';
import 'package:mart_app/Sign.dart';
import 'package:mart_app/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (SignIn()),
    );
  }
}
