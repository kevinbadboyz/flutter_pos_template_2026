import 'package:flutter/material.dart';
import 'package:flutter_pos_template_2026/home_page/home_page.dart';
import 'package:flutter_pos_template_2026/menu/table_resto_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.lightGreenAccent),
      ),
      home: HomePage(),
    );
  }
}

