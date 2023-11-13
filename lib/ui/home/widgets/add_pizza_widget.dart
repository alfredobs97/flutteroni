import 'package:flutter/material.dart';

class AddPizzaWidget extends StatelessWidget {
  const AddPizzaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: Theme.of(context).colorScheme.secondary, width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.add, color: Theme.of(context).colorScheme.secondary),
          Icon(Icons.local_pizza, color: Theme.of(context).colorScheme.primary),
        ],
      ),
    );
  }
}
