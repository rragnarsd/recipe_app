import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/models/saved_recipes.dart';
import 'package:recipe_app/provider/recipe_provider.dart';
import 'package:recipe_app/provider/saved_provider.dart';
import 'package:recipe_app/screens/recipe_screen.dart';
import 'package:recipe_app/widgets/network_image.dart';
import 'package:sizer/sizer.dart';
import 'package:unicons/unicons.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryName = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 6.0.h,
              ),
              Text(
                categoryName,
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 4.0.h,
              ),
              const RecipesTabButtons(),
              const RecipesListView(),
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
            height: 6.0.h,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const RecipesTabButton(text: 'Filter'),
                SizedBox(
                  width: 2.0.h,
                ),
                const RecipesTabButton(text: 'Sort'),
                SizedBox(
                  width: 2.0.h,
                ),
                const RecipesTabButton(text: 'Category'),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class RecipesTabButton extends StatelessWidget {
  final String text;
  const RecipesTabButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3.3,
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
        ),
      ),
    );
  }
}

class RecipesListView extends StatelessWidget {
  const RecipesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recipesProvider = Provider.of<ListOfRecipes>(context, listen: false);
    final categoryName = ModalRoute.of(context)!.settings.arguments as String;
    final recipeList = recipesProvider.findByCategory(categoryName);

    //id og para við provider
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1.2,
      child: ListView.builder(
          itemCount: recipeList.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
              child: RecipesListItem(
                recipeId: recipeList[index].toString(),
                imageUrl: recipeList[index].recipeImage,
                recipeName: recipeList[index].recipeName,
                prepTime: recipeList[index].prepTime,
                cookTime: recipeList[index].cookTime,
                recipeCategory: recipeList[index].recipeCategory,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RecipeScreen(),
                    settings: RouteSettings(arguments: recipeList[index]),
                  ),
                );
              },
            );
          }),
    );
  }
}

class RecipesListItem extends StatelessWidget {
  const RecipesListItem({
    Key? key,
    required this.recipeId,
    required this.imageUrl,
    required this.recipeName,
    required this.prepTime,
    required this.cookTime,
    required this.recipeCategory,
  }) : super(key: key);

  final String recipeId;
  final String imageUrl;
  final String recipeName;
  final double prepTime;
  final double cookTime;
  final String recipeCategory;

  @override
  Widget build(BuildContext context) {
    final savedProvider = Provider.of<SavedProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: SizedBox(
        height: 20.0.h,
        child: Material(
          color: Colors.white,
          elevation: 2.0,
          child: Row(
            children: [
              ReusableNetworkImage(
                height: 20.0.h,
                width: 20.0.h,
                imageUrl: imageUrl,
              ),
              SizedBox(
                width: 2.0.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipeName,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        UniconsLine.clock,
                        size: 16.0,
                        color: Colors.grey.shade500,
                      ),
                      SizedBox(
                        width: 1.5.w,
                      ),
                      Text(
                        '${prepTime.toStringAsFixed(0)} M Prep',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.0.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        UniconsLine.clock,
                        size: 16.0,
                        color: Colors.grey.shade500,
                      ),
                      SizedBox(
                        width: 1.5.w,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          savedProvider.addToFav(recipeId, recipeCategory,
                              recipeName, imageUrl, prepTime, cookTime);
                        },
                        icon: Icon(
                          Icons.bookmark_border,
                          size: 22.0.sp,
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          recipeCategory,
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                      )
                    ]),
              ),
              const SizedBox(
                height: 40.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
