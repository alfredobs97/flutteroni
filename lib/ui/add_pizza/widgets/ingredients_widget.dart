import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutteroni/data/ingredients.dart';
import 'package:flutteroni/model/ingredient.dart';
import 'package:flutteroni/providers/pizza_provider.dart';
import 'package:flutteroni/ui/add_pizza/widgets/ingredient_tile_widget.dart';
import 'package:provider/provider.dart';

class IngredientsWidget extends StatelessWidget {
  IngredientsWidget({super.key});

  final List<Ingredient> ingredients = [
    Mozzarella(),
    AOVE(),
    Pomodoro(),
    Basilico(),
    GranaPadano(),
    Burrata(),
    Prosciutto(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<PizzaProvider>(
      builder: (context, model, child) => ListView.builder(
        itemCount: ingredients.length,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: IngredientTileWidget(
            ingredient: ingredients[index],
            isSelected: model.ingredients.contains(ingredients[index]),
          ),
        ),
      ),
    );
  }
}
