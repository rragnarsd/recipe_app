/*
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:recipe_api/models/recipe.dart';
import 'package:http/http.dart' as http;
import 'package:recipe_api/secret.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Recipe> list = <Recipe>[];
  bool isLoading = true;

  final url =
      'https://api.edamam.com/api/recipes/v2?type=public&q=lunch&app_id=$API_ID&app_key=$API_KEY';
 Future getApiData() async {
    var response = await http.get(Uri.parse(url));
    Map json = jsonDecode(response.body);
    json['hits'].forEach((e) {
      Recipe recipe = Recipe(
        url: e['recipe']['url'],
        image: e['recipe']['image'],
        source: e['recipe']['source'],
        label: e['recipe']['label'],
        healthLabels: e['recipe']['healthLabels'],
        ingredientLines: e['recipe']['ingredientLines'],
        dietLabels: e['recipe']['dietLabels'],
      );
      setState(() {
        list.add(recipe);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Column(children: [
            Text(list[index].label),
            Text(list[index].source),
            Image.network(list[index].image),
            Text(list[index].ingredientLines.toString()),
          ]);
        },
      ),
    );
  }
}
*/
