import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {

  final List<Meal> meals;
  const CategoriesMealsScreen(this.meals);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;

    final categoriesMeals = meals
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas'),
      ),
      body: ListView.builder(
        itemCount: categoriesMeals.length,
        itemBuilder: (ctx, index) => MealItem(categoriesMeals[index]),
      ),
    );
  }
}
