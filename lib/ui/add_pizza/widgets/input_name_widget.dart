import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
    );
  }
}
