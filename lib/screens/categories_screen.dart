import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import 'package:meals/data/dummy_data.dart';
class CategoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      appBar: AppBar(title: Text('Vamos cozinhar?'),),
          body: GridView(
            padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1.5,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((category) {
            return CategoryItem(category);
        },).toList(),
      ),
    );
  }
}