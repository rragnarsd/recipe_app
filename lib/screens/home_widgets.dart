import 'package:flutter/material.dart';
import 'package:recipe_api/screens/receipes_screen.dart';
import 'package:recipe_api/screens/recipe_screen.dart';
import 'package:recipe_api/utils/icon_list.dart';
import 'package:recipe_api/widgets/network_image.dart';
import 'package:recipe_api/widgets/search_field.dart';
import 'package:unicons/unicons.dart';

import '../utils/recipe_list.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 40.0,
            ),
            Text(
              'FoodRecipe',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const HomeHeaderRow(),
            const SizedBox(
              height: 20.0,
            ),
            const SearchField(),
            const SizedBox(
              height: 40.0,
            ),
            const HomeGrid(),
            const SizedBox(
              height: 40.0,
            ),
            Text(
              'Popular Recipes',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const HomePopularGrid(),
            const SizedBox(
              height: 10.0,
            )
          ]),
        ),
      ),
    );
  }
}

class HomeHeaderRow extends StatelessWidget {
  const HomeHeaderRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Good Morning',
          style: Theme.of(context).textTheme.headline4,
        ),
        Container(
          width: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade200,
          ),
          child: Image.asset(
            'assets/cake.png',
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}

class HomePopularGrid extends StatelessWidget {
  const HomePopularGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.0,
      child: ListView.builder(
        itemCount: popularRecipes.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: HomeStack(
                image: popularRecipes[index].recipeImage,
                text: popularRecipes[index].recipeName,
                prepTime: popularRecipes[index].prepTime,
                cookTime: popularRecipes[index].cookTime,
                recipeReview: popularRecipes[index].recipeReview,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RecipeScreen(),
                  settings: RouteSettings(
                    arguments: popularRecipes[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class HomeStack extends StatelessWidget {
  final String image;
  final String text;
  final double prepTime;
  final double cookTime;
  final double recipeReview;
  const HomeStack({
    Key? key,
    required this.image,
    required this.text,
    required this.prepTime,
    required this.cookTime,
    required this.recipeReview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          ReusableNetworkImage(
            imageUrl: image,
            height: 350.0,
            width: 200.0,
          ),
          Positioned(
            bottom: 10.0,
            right: 12.0,
            child: Container(
              width: 180.0,
              height: 110.0,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(UniconsLine.clock),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          ' ${prepTime + cookTime} M Total',
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(color: Colors.black38),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(UniconsLine.star),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          recipeReview.toStringAsFixed(0),
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(color: Colors.black38),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HomeGrid extends StatelessWidget {
  const HomeGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      child: ListView.builder(
        itemCount: iconList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return HomeGridItem(
            text: iconList[index].text,
            image: iconList[index].icon,
          );
        },
      ),
    );
  }
}

class HomeGridItem extends StatelessWidget {
  final String text;
  final String image;
  const HomeGridItem({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 120.0,
        padding: const EdgeInsets.all(5.0),
        child: Material(
          color: Colors.white,
          elevation: 2.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const RecipesScreen(),
          ),
        );
      },
    );
  }
}
