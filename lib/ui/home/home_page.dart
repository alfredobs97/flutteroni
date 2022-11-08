import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutteroni/providers/pizza_provider.dart';
import 'package:flutteroni/ui/home/widgets/empty_body_widget.dart';
import 'package:flutteroni/ui/home/widgets/home_app_bar.dart';
import 'package:flutteroni/ui/home/widgets/pizza_list_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Center(
        child: Consumer<PizzaProvider>(
          builder: (context, model, child) =>
              model.pizzas.isNotEmpty ? PizzaListWidget(pizzas: model.pizzas) : const EmptyBodyWidget(),
        ),
      ),
    );
  }
}
