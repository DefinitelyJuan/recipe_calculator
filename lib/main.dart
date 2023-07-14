import 'package:flutter/material.dart';
import 'recipe_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Calculator',
      home: RecipePage(),
    );
  }
}