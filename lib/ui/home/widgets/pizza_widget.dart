import 'package:flutter/material.dart';
import 'package:flutteroni/model/pizza.dart';

class PizzaWidget extends StatelessWidget {
  final Pizza pizza;

  const PizzaWidget({required this.pizza, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Center(
                child: Text(
              pizza.name,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).canvasColor,
                  fontSize: 16),
            )),
          )
        ],
      ),
    );
  }
}
