import 'package:flutter/material.dart';
import 'recipe_card.dart';
import 'recipe.dart';
import 'recipe_detail.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipe Calculator"),
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
          child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: Recipe.samples.length,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  Image(image: AssetImage(Recipe.samples[index].imageUrl)),
                  Text(Recipe.samples[index].label)],
              ),
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecipeDetails(recipe: Recipe.samples[index])),
              );
              },
          );
        },

      )),
    );
  }
}
