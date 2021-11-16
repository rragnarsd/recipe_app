import 'package:flutter/material.dart';
import 'package:recipe_app/models/saved_recipes.dart';

class SavedProvider with ChangeNotifier {

  final List<SavedRecipes> _list = [];

  List<SavedRecipes> get list => _list;

  void addRecipe(SavedRecipes savedRecipes) {
    _list.add(savedRecipes);
    notifyListeners();
  }
}
