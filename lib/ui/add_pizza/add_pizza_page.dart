import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutteroni/ui/add_pizza/widgets/ingredients_widget.dart';
import 'package:flutteroni/ui/add_pizza/widgets/input_name_widget.dart';
import 'package:flutteroni/ui/add_pizza/widgets/picture_widget.dart';

class AddPizzaPage extends StatelessWidget {
  const AddPizzaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nueva Pizza', style: Theme.of(context).textTheme.headline5),
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
            Text('Ingredientes', style: Theme.of(context).textTheme.headline5),
            const SizedBox(height: 16),
            Expanded(child: IngredientsWidget()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {},
        child: const Icon(Icons.save),
      ),
    );
  }
}
