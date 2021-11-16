import 'package:flutter/material.dart';
import 'package:recipe_app/models/saved_recipes.dart';

class SavedProvider with ChangeNotifier {
  final Map<String, SavedRecipes> _savedRecipes = {};

  Map<String, SavedRecipes> get getRecipes {
    return _savedRecipes;
  }

  void addToFav(String recipeId, String recipeCategory, String recipeName,
      String recipeImage, double prepTime, double cookTime) {
    if (_savedRecipes.containsKey(recipeId)) {
      _savedRecipes.update(
          recipeId,
          (value) => SavedRecipes(
              recipeId: value.recipeId,
              recipeCategory: value.recipeCategory,
              recipeName: value.recipeName,
              recipeImage: value.recipeImage,
              prepTime: value.prepTime,
              cookTime: value.cookTime));
    } else {
      _savedRecipes.putIfAbsent(
        recipeId,
            () => SavedRecipes(
          recipeId: recipeId,
          recipeCategory: recipeCategory,
          recipeName: recipeName,
          recipeImage: recipeImage,
          prepTime: prepTime,
          cookTime: cookTime,
        ),
      );
    } notifyListeners();
  }

  /* void removeFromFav() {
    _recipes.clear();
    notifyListeners();
  }*/
}
