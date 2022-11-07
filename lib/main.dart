import 'package:flutter/material.dart';
import 'package:flutteroni/theme/app_theme.dart';
import 'package:flutteroni/ui/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutteroni',
      theme: AppTheme.theme(),
      home: const HomePage(),
    );
  }
}
