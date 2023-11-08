import 'package:flutter/material.dart';
import 'package:flutteroni/model/pizza.dart';
import 'package:flutteroni/ui/home/widgets/pizza_widget.dart';

class PizzaListWidget extends StatelessWidget {
  final List<Pizza> pizzas;
  const PizzaListWidget({required this.pizzas, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: pizzas.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: PizzaWidget(pizza: pizzas[index]),
      ),
    );
  }
}
