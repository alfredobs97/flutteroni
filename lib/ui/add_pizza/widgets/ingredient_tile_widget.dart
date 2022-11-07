import 'package:flutter/material.dart';
import 'package:flutteroni/model/ingredient.dart';
import 'package:flutteroni/providers/pizza_provider.dart';
import 'package:provider/provider.dart';

class IngredientTileWidget extends StatelessWidget {
  final Ingredient ingredient;
  final bool isSelected;

  const IngredientTileWidget({required this.ingredient, required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            value: isSelected,
            onChanged: (bool? isSelected) {
              isSelected ?? false ? _addIngredient(context) : _removeIngredient(context);
            },
          ),
          const SizedBox(width: 8),
          Text(ingredient.name, style: Theme.of(context).textTheme.bodyText2),
        ],
      ),
    );
  }

  void _addIngredient(BuildContext context) => context.read<PizzaProvider>().addIngredient(ingredient);
void _removeIngredient(BuildContext context) => context.read<PizzaProvider>().removeIngredient(ingredient);
}
