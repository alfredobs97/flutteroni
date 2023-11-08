import 'package:flutter/material.dart';

class EmptyBodyWidget extends StatelessWidget {
  const EmptyBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Icon(Icons.mood_bad, size: 46),
          Text('No hay pizzas'),
        ],
      ),
    );
  }
}
