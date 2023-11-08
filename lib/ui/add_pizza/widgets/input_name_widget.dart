import 'package:flutter/material.dart';
import 'package:flutteroni/providers/pizza_provider.dart';
import 'package:provider/provider.dart';

class InputNameWidget extends StatelessWidget {
  const InputNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Nombre pizza',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            width: 2,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      onChanged: (String? value) {
        if (value != null) {
          context.read<PizzaProvider>().pizzaName = value;
        }
      },
    );
  }
}
