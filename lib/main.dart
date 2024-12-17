import 'package:color_changer/views/pages/dynamic_page.dart';
import 'package:color_changer/views/pages/home_page.dart';
import 'package:color_changer/views/pages/static_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'static_page': (context) => StaticPage(),
        'dynamic_page': (context) => DynamicPage(),
      },
    );
  }
}