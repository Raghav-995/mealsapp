import 'package:flutter/material.dart';
import 'package:mealsapp/model/category_model.dart';

class CategoriesGridScreen extends StatelessWidget {
  const CategoriesGridScreen(
      {super.key, required this.category, required this.onSelect});
  final Category category;
  final void Function() onSelect;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelect,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.8),
              category.color.withOpacity(1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(category.title,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Theme.of(context).colorScheme.background,
                )),
      ),
    );
  }

  toList() {}
}
