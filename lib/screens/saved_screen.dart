import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/custom_navbar.dart';
import 'package:recipe_app/provider/saved_provider.dart';
import 'package:sizer/sizer.dart';
import 'package:unicons/unicons.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final savedProvider = Provider.of<SavedProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: savedProvider.list.isEmpty
              ? const EmptyRecipe()
              : SavedRecipes(savedProvider: savedProvider),
        ),
      ),
    );
  }
}

class SavedRecipes extends StatelessWidget {
  const SavedRecipes({
    Key? key,
    required this.savedProvider,
  }) : super(key: key);

  final SavedProvider savedProvider;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 6.0.h,
        ),
        Text(
          'Saved',
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(
          height: 4.0.h,
        ),
       const SavedTabRow(),
        SizedBox(
          height: 2.0.h,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: ListView.builder(
              itemCount: savedProvider.list.length,
              itemBuilder: (context, index) {
                var recipe = savedProvider.list[index];
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
                              recipe.recipeImage,
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
                                recipe.recipeName,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4,
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
                                    '${recipe.prepTime.toStringAsFixed(0)} M Prep',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2,
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
                                    '${recipe.cookTime.toStringAsFixed(0)} M Cook',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.end,
                                mainAxisAlignment:
                                MainAxisAlignment.center,
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
                                      recipe.recipeCategory,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                        color: Theme.of(context)
                                            .primaryColor,
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
              }),
        ),
      ],
    );
  }
}

class SavedTabRow extends StatelessWidget {
  const SavedTabRow({
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

class EmptyRecipe extends StatelessWidget {
  const EmptyRecipe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.0.h,
            ),
            const Text('You haven\'t saved any recipes yet'),
            const Text('Would you like to do that now?'),
            SizedBox(height: 2.0.h),
            OutlinedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CustomNavBar(),
                ),
              ),
              child: const Text('Explore'),
            ),
          ]),
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