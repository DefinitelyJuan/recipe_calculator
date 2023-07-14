import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  RecipeCard({
    Key? key, required this.name, required this.image, required this.onPress
  }) : super(key: key);
  String image;
  String name;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Image(image: AssetImage(image),),
        height: 200.0,
        width: 170,
        margin: EdgeInsets.all(10),
      ),
      onTap: onPress,
    );
  }
}