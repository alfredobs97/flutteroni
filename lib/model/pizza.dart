import 'package:flutteroni/model/ingredient.dart';

class Pizza {
  final List<Ingredient> ingredients;
  final String name;
  final bool isBianca;

  Pizza({
    required this.ingredients,
    required this.name,
    this.isBianca = false,
  });
}
