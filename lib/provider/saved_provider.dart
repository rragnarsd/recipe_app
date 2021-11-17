import 'package:flutter/material.dart';
import 'package:recipe_app/models/saved_recipes.dart';

class SavedProvider with ChangeNotifier {

  final List<SavedRecipes> _list = [];

  List<SavedRecipes> get list => _list;
/*
  void addAndRemoveFromSaved(SavedRecipes savedRecipes) {
    if (_list.contains(savedRecipes)) {
      removeRecipe();
    } else {
      _list.add(savedRecipes);
    }
  }*/

  void addRecipe(SavedRecipes savedRecipes) {
    _list.add(savedRecipes);
    notifyListeners();
  }

  void removeRecipe() {
    _list.clear();
    notifyListeners();
  }
}
