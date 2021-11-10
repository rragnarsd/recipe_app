import 'package:flutter/material.dart';
import 'package:recipe_api/icon_list.dart';

import '../recipe_list.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
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
      height: 400.0,
      child: ListView.builder(
        itemCount: listOfBreakfast.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: HomeStack(
                image: listOfBreakfast[index].recipeImage,
                text: listOfBreakfast[index].recipeName,
              prepTime: listOfBreakfast[index].prepTime.toString(),
              recipeReview: listOfBreakfast[index].recipeReview.toString(),
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
          height: 400.0,
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
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Time $prepTime',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                   'Stars: $recipeReview',
                    style: TextStyle(
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
