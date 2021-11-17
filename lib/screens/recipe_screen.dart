import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/models/models.dart';
import 'package:recipe_app/provider/provider.dart';
import 'package:unicons/unicons.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final popularRecipes = ModalRoute.of(context)!.settings.arguments as Recipe;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1.20,
          width: MediaQuery.of(context).size.width,
          child: Stack(clipBehavior: Clip.none, children: [
            CachedNetworkImage(
              imageUrl: popularRecipes.recipeImage,
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
    return Material(
      color: Colors.white,
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.1,
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Method',
              style: Theme.of(context).textTheme.headline4,
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
                    popularRecipes.recipeMethod,
                    style: Theme.of(context).textTheme.bodyText2,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
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
    final savedProvider = Provider.of<SavedProvider>(context);
    return Material(
      color: Colors.white,
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.1,
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  popularRecipes.recipeName,
                  style: Theme.of(context).textTheme.headline4,
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
              child: Text(
                popularRecipes.recipeCategory,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Divider(
              thickness: 0.2,
              color: Theme.of(context).primaryColor,
              indent: 10.0,
              endIndent: 10.0,
            ),
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
                      '${popularRecipes.prepTime.toStringAsFixed(0)} M Prep Time',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(UniconsLine.clock),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '${popularRecipes.cookTime.toStringAsFixed(0)} M Cook Time',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
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
                Text(
                  '${popularRecipes.recipeServing} People Serving',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
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
    return Material(
      color: Colors.white,
      elevation: 2.0,
      child: Container(
        height: 130.0,
        width: MediaQuery.of(context).size.width / 1.1,
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ingredients',
                style: Theme.of(context).textTheme.headline4,
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
                      Text(
                        popularRecipes.recipeIngredients[0],
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(UniconsLine.check),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        popularRecipes.recipeIngredients[1],
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(UniconsLine.check),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        popularRecipes.recipeIngredients[2],
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
