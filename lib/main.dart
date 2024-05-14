// ignore_for_file: prefer_const_constructors

import 'package:app_ti22_a3/home_screen.dart';
import 'package:flutter/material.dart';

import 'gambar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi TI 22 A3",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: HomeScreen(),
    );
  }
}
