import 'package:flutter/material.dart';
import 'package:flutteroni/ui/home/widgets/empty_body_widget.dart';
import 'package:flutteroni/ui/home/widgets/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: Center(
        child: EmptyBodyWidget(),
      ),
    );
  }
}
