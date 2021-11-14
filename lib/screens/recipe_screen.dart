import 'package:flutter/material.dart';
import 'package:recipe_api/models/food.dart';
import 'package:unicons/unicons.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final popularRecipes = ModalRoute.of(context)!.settings.arguments as Recipe;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1.2,
          width: MediaQuery.of(context).size.width,
          child: Stack(clipBehavior: Clip.none, children: [
            Image.network(
              popularRecipes.recipeImage,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            Positioned(
              top: 180.0,
              left: 18.0,
              child: Column(
                children: const [
                  RecipeAbout(),
                  SizedBox(
                    height: 20.0,
                  ),
                  RecipeIngredient(),
                  SizedBox(
                    height: 20.0,
                  ),
                  RecipeMethod(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class RecipeMethod extends StatelessWidget {
  const RecipeMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final popularRecipes = ModalRoute.of(context)!.settings.arguments as Recipe;
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      color: Colors.grey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Method',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              const Icon(UniconsLine.label),
              const SizedBox(
                width: 5.0,
              ),
              Expanded(
                child: Text(
                  popularRecipes.recipeMethod[0],
                  style: const TextStyle(
                    fontSize: 14.0,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              const Icon(UniconsLine.label),
              const SizedBox(
                width: 5.0,
              ),
              Expanded(
                child: Text(
                  popularRecipes.recipeMethod[1],
                  style: const TextStyle(
                    fontSize: 14.0,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class RecipeAbout extends StatelessWidget {
  const RecipeAbout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final popularRecipes = ModalRoute.of(context)!.settings.arguments as Recipe;
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      color: Colors.grey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                popularRecipes.recipeName,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: const [
                  Icon(
                    UniconsLine.share,
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    UniconsLine.bookmark,
                    size: 26.0,
                  )
                ],
              )
            ],
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text(popularRecipes.recipeCategory),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Divider(thickness: 2.0, color: Colors.grey.shade400),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(UniconsLine.clock),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                      '${popularRecipes.prepTime.toStringAsFixed(0)} M Prep Time'),
                ],
              ),
              Row(
                children: [
                  const Icon(UniconsLine.clock),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                      '${popularRecipes.cookTime.toStringAsFixed(0)} M Cook Time'),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              const Icon(UniconsLine.users_alt),
              const SizedBox(
                width: 5.0,
              ),
              Text('${popularRecipes.recipeServing} People Serving')
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class RecipeIngredient extends StatelessWidget {
  const RecipeIngredient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final popularRecipes = ModalRoute.of(context)!.settings.arguments as Recipe;
    return Container(
      color: Colors.grey.shade200,
      height: 140.0,
      width: MediaQuery.of(context).size.width / 1.1,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ingredients',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(UniconsLine.check),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(popularRecipes.recipeIngredients[0]),
                  ],
                ),
                Row(
                  children: [
                    const Icon(UniconsLine.check),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(popularRecipes.recipeIngredients[1]),
                  ],
                ),
                Row(
                  children: [
                    const Icon(UniconsLine.check),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(popularRecipes.recipeIngredients[2]),
                  ],
                ),
                Row(
                  children: [
                    const Icon(UniconsLine.check),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(popularRecipes.recipeIngredients[3]),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
