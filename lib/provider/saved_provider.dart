import 'package:flutter/material.dart';
import 'package:recipe_app/models/saved_recipes.dart';

class SavedProvider with ChangeNotifier {
  final Map<String, SavedRecipes> _list = {};
  Map<String, SavedRecipes> get getSaved => _list;

  void addAndRemoveFromSaved(String recipeId, String recipeCategory,
      double cookTime, double prepTime, String recipeImage, String recipeName) {
    if (_list.containsKey(recipeId)) {
      removeRecipe(recipeId);
    } else {
      _list.putIfAbsent(
          recipeId,
          () => SavedRecipes(
              recipeId: recipeId,
              recipeCategory: recipeCategory,
              cookTime: cookTime,
              prepTime: prepTime,
              recipeImage: recipeImage,
              recipeName: recipeName));
    }
    notifyListeners();
  }

  void clearRecipes() {
    _list.clear();
    notifyListeners();
  }

  void removeRecipe(String recipeId) {
    _list.remove(recipeId);
    notifyListeners();
  }
}
