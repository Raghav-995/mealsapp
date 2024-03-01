import 'package:mealsapp/model/meals_model.dart';
import 'package:flutter/material.dart';
import 'package:mealsapp/screens/meals_details.dart';
import 'package:mealsapp/widgets/meal_data.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    this.title,
    required this.meals,
  });
  final String? title;
  final List<Meal> meals;

  void selectMeal(BuildContext context, Meal meal) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (ctx) => MealsDetailsScreen(
                  meal: meal,
                )));
  }

  @override
  Widget build(context) {
    Widget content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealItem(
            meal: meals[index],
            onSelectMeal: (meal) {
              selectMeal(context, meal);
            }));
    if (meals.isEmpty) {
      content = const Center(
          child: Text(
              "Uh no, there are no meals added yet, try to switch to another meal."));
    }
    if (title == null) {
      return content;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
