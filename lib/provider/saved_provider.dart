import 'package:flutter/material.dart';
import 'package:recipe_app/models/saved_recipes.dart';

class SavedProvider with ChangeNotifier {
  final Map<String, SavedRecipes> _savedRecipes = {};

  Map<String, SavedRecipes> get getRecipes {
    return _savedRecipes;
  }

  void addToFav(String recipeId, String recipeCategory, String recipeName,
      String recipeImage, double prepTime, double cookTime) {
    _savedRecipes.putIfAbsent(
      recipeId,
      () => SavedRecipes(
        recipeId: DateTime.now().toString(),
        recipeCategory: recipeCategory,
        recipeName: recipeName,
        recipeImage: recipeImage,
        prepTime: prepTime,
        cookTime: cookTime,
      ),
    );
    notifyListeners();
  }

 /* void removeFromFav() {
    _recipes.clear();
    notifyListeners();
  }*/
}
