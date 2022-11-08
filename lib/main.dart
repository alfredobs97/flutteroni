import 'package:flutter/material.dart';
import 'package:flutteroni/providers/pizza_provider.dart';
import 'package:flutteroni/theme/app_theme.dart';
import 'package:flutteroni/ui/add_pizza/add_pizza_page.dart';
import 'package:flutteroni/ui/home/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PizzaProvider(),
      child: MaterialApp(
        title: 'Flutteroni',
        theme: AppTheme.theme(),
        home: const HomePage(),
      ),
    );
  }
}
