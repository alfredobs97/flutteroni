import 'package:flutter/material.dart';
import 'package:flutteroni/ui/home/widgets/add_pizza_widget.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).canvasColor,
      elevation: 0,
      title: Text('Mis pizzas',
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold)),
      titleSpacing: 32,
      actions: const [
        Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8, right: 32.0),
          child: AddPizzaWidget(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(0, 48);
}
