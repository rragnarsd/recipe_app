import 'package:flutter/material.dart';
import 'package:recipe_api/utils/icon_list.dart';
import 'package:recipe_api/widgets/search_field.dart';

import '../utils/recipe_list.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'FoodRecipe',
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10.0,
                ),
                HomeHeaderRow(),
                SizedBox(
                  height: 20.0,
                ),
                SearchField(),
                SizedBox(
                  height: 40.0,
                ),
                HomeGrid(),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Popular Recipes',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20.0,
                ),
                HomePopularGrid()
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
        const Text(
          'Good Morning',
          style: TextStyle(fontSize: 20.0),
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
          return Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: HomeStack(
              image: popularRecipes[index].recipeImage,
              text: popularRecipes[index].recipeName,
              prepTime: popularRecipes[index].prepTime.toString(),
              recipeReview: popularRecipes[index].recipeReview.toString(),
            ),
          );
        },
      ),
    );
  }
}

class HomeStack extends StatelessWidget {
  final String image;
  final String text;
  final String prepTime;
  final String recipeReview;
  const HomeStack({
    Key? key,
    required this.image,
    required this.text,
    required this.prepTime,
    required this.recipeReview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 350.0,
          width: 200.0,
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10.0,
          right: 12.0,
          child: Container(
            width: 180.0,
            height: 100.0,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Time $prepTime',
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Stars: $recipeReview',
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
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
      height: 100.0,
      child: ListView.builder(
        itemCount: iconList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: HomeGridItem(
              text: iconList[index].text,
              image: iconList[index].icon,
            ),
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 120.0,
      width: 100.0,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
