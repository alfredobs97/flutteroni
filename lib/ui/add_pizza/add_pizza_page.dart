import 'package:flutter/material.dart';
import 'package:flutteroni/providers/pizza_provider.dart';
import 'package:flutteroni/ui/add_pizza/widgets/ingredients_widget.dart';
import 'package:flutteroni/ui/add_pizza/widgets/input_name_widget.dart';
import 'package:flutteroni/ui/add_pizza/widgets/picture_widget.dart';
import 'package:provider/provider.dart';

class AddPizzaPage extends StatelessWidget {
  const AddPizzaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nueva Pizza',
            style: Theme.of(context).textTheme.headlineSmall),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: PictureWidget()),
            const SizedBox(height: 16),
            const InputNameWidget(),
            const SizedBox(height: 16),
            Text('Ingredientes',
                style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 16),
            Expanded(child: IngredientsWidget()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () => context.read<PizzaProvider>().createPizza(),
        child: const Icon(Icons.save),
      ),
    );
  }
}
