import 'package:flutter/material.dart';

class EmptyBodyWidget extends StatelessWidget {
  const EmptyBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Column(
        children: const [
          Icon(Icons.mood_bad, size: 46),
          Text('No hay pizzas'),
        ],
      ),
    );
  }
}
