import 'package:flutter/material.dart';

class SavedRecipes with ChangeNotifier{
  final String recipeId;
  final String recipeCategory;
  final String recipeName;
  final String recipeImage;
  final double prepTime;
  final double cookTime;

  SavedRecipes(
      {required this.recipeId,
      required this.recipeCategory,
      required this.recipeName,
      required this.recipeImage,
      required this.prepTime,
      required this.cookTime});
}
