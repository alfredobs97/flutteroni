import 'package:flutter/material.dart';
import 'package:flutteroni/model/ingredient.dart';

class PizzaProvider extends ChangeNotifier {
  final List<Ingredient> _ingredients = [];

  List<Ingredient> get ingredients => [..._ingredients];

  void addIngredient(Ingredient ingredient) {
    _ingredients.add(ingredient);
    notifyListeners();
  }

  void removeIngredient(Ingredient ingredient) {
    _ingredients.remove(ingredient);
    notifyListeners();
  }
}
