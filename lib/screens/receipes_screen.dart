import 'package:flutter/material.dart';
import 'package:recipe_api/utils/recipe_list.dart';
import 'package:unicons/unicons.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40.0,
              ),
              Text(
                'Recipes',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const RecipesTabButtons(),
              const RecipesListView(),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecipesTabButtons extends StatelessWidget {
  const RecipesTabButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40.0,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3.3,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Filter',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3.3,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Sort',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3.3,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      'Category',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class RecipesListView extends StatelessWidget {
  const RecipesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: ListView.builder(
          itemCount: ListOfRecipes().listOfBreakfast.length,
          itemBuilder: (context, index) {
            var breakfast = ListOfRecipes().listOfBreakfast[index];
            return RecipesListItem(
              imageUrl: breakfast.recipeImage,
              recipeName: breakfast.recipeName,
              prepTime: breakfast.prepTime,
              cookTime: breakfast.cookTime,
              recipeCategory: breakfast.recipeCategory,
            );
          }),
    );
  }
}

class RecipesListItem extends StatelessWidget {
  const RecipesListItem({
    Key? key,
    required this.imageUrl,
    required this.recipeName,
    required this.prepTime,
    required this.cookTime,
    required this.recipeCategory,
  }) : super(key: key);

  final String imageUrl;
  final String recipeName;
  final double prepTime;
  final double cookTime;
  final String recipeCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: SizedBox(
        height: 120.0,
        child: Container(
          decoration: BoxDecoration(color: Colors.grey.shade200),
          child: Row(
            children: [
              SizedBox(
                height: 120.0,
                width: 140.0,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipeName,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        UniconsLine.clock,
                        size: 16.0,
                        color: Colors.grey.shade500,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        '${prepTime.toStringAsFixed(0)} M Prep',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        UniconsLine.clock,
                        size: 16.0,
                        color: Colors.grey.shade500,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        '${cookTime.toStringAsFixed(0)} M Cook',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          UniconsLine.bookmark,
                          size: 30.0,
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          recipeCategory,
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Colors.black87,
                                  ),
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
