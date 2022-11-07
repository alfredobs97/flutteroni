import 'package:flutter/material.dart';
import 'package:flutteroni/model/ingredient.dart';
import 'package:flutteroni/model/pizza.dart';

class PizzaProvider extends ChangeNotifier {
  final List<Ingredient> _ingredients = [];
  String pizzaName = '';
  final List<Pizza> _pizzas = [];

  List<Ingredient> get ingredients => [..._ingredients];

  void addIngredient(Ingredient ingredient) {
    _ingredients.add(ingredient);
    notifyListeners();
  }

  void removeIngredient(Ingredient ingredient) {
    _ingredients.remove(ingredient);
    notifyListeners();
  }

  void createPizza() {
    final Pizza newPizza = Pizza(
      ingredients: ingredients,
      name: pizzaName,
      isBianca: _isPizzaBianca(),
    );

    _pizzas.add(newPizza);

    notifyListeners();
  }

  bool _isPizzaBianca() => !_ingredients.any((ingredient) => ingredient.name == 'Pomodoro');
}
