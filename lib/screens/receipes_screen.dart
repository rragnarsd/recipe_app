import 'package:flutter/material.dart';
import 'package:recipe_app/utils/recipe_list.dart';
import 'package:sizer/sizer.dart';
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
              SizedBox(
                height: 6.0.h,
              ),
              Text(
                'Recipes',
                style: Theme.of(context).textTheme.headline1,
              ),
               SizedBox(
                height: 4.0.h,
              ),
              const RecipesTabButtons(),
              const RecipesListView(),
               SizedBox(
                height: 2.0.h,
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
    return  Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 6.0.h,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const TabButton(text: 'Filter'),
                SizedBox(
                  width: 2.0.h,
                ),
                const TabButton(text: 'Sort'),
                SizedBox(
                  width: 2.0.h,
                ),
                const TabButton(text: 'Category'),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class TabButton extends StatelessWidget {
  final String text;
  const TabButton({
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
        height: 20.0.h,
        child: Material(
          color: Colors.white,
          elevation: 2.0,
          child: Row(
            children: [
              SizedBox(
                height: 20.0.h,
                width: 20.0.h,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
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
                        onPressed: () {},
                        icon: Icon(
                          UniconsLine.bookmark,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
