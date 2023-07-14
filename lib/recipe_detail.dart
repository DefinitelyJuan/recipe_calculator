import 'package:flutter/material.dart';
import 'recipe.dart';
class RecipeDetails extends StatefulWidget {
  RecipeDetails({super.key, required this.recipe});
  Recipe recipe;
  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  double servingValue = 1;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.recipe.label),
          backgroundColor: Colors.grey
      ),
      body: SafeArea(
        child: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(image:
            AssetImage(widget.recipe.imageUrl)),
          ),const SizedBox(
            height: 4,
          ),
        Text(widget.recipe.label),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (BuildContext context, int index){
                final ingredient = widget.recipe.ingredients[index];
                return Text("${(ingredient.quantity * servingValue).toStringAsFixed(1)}, ${ingredient.measure}, ${ingredient.name}", style: TextStyle(color: Colors.black),);
              },
            ),
          ),
          Slider(
              min: 1,
              activeColor: Colors.green,
              inactiveColor: Colors.green.shade200,
              max: 8,
              divisions: 8,
              label: "${(servingValue * widget.recipe.servings).round()} servings",
              value: servingValue,
              onChanged: (newValue){setState(() {
                    servingValue = newValue;
                  }
                );

              }
            )
          ]
      ),)
    );
  }
}
