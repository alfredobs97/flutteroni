abstract class Ingredient {
  final String name;
  final dynamic icon;

  Ingredient({required this.name, required this.icon});

  @override
  String toString() => 'Ingredient name: $name';
}
