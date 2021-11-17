import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/models/models.dart';
import 'package:recipe_app/provider/provider.dart';
import 'package:recipe_app/screens/recipe_screen.dart';
import 'package:recipe_app/widgets/network_image.dart';
import 'package:recipe_app/widgets/tab_row.dart';
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
              const TabRow(),
              const RecipesListView(),
            ],
          ),
        ),
      ),
    );
  }
}

class RecipesListView extends StatefulWidget {
  const RecipesListView({
    Key? key,
  }) : super(key: key);

  @override
  State<RecipesListView> createState() => _RecipesListViewState();
}

class _RecipesListViewState extends State<RecipesListView> {
  @override
  Widget build(BuildContext context) {
    final recipesProvider = Provider.of<ListOfRecipes>(context, listen: false);
    final categoryName = ModalRoute.of(context)!.settings.arguments as String;
    final recipeList = recipesProvider.findByCategory(categoryName);
/*    final savedProvider = Provider.of<SavedRecipes>(context);*/

    return SizedBox(
      height: MediaQuery.of(context).size.height * 1.2,
      child: ListView.builder(
          itemCount: recipeList.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
              child: Padding(
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
                          imageUrl: recipeList[index].recipeImage,
                        ),
                        SizedBox(
                          width: 2.0.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recipeList[index].recipeName,
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
                                  '${recipeList[index].prepTime.toStringAsFixed(0)}M Prep',
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
                                  '${recipeList[index].cookTime.toStringAsFixed(0)}M Cook',
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
                                      context
                                          .read<SavedProvider>()
                                          .addRecipe(
                                            SavedRecipes(
                                              recipeId: recipeList[index]
                                                  .recipeId
                                                  .toString(),
                                              recipeCategory: recipeList[index]
                                                  .recipeCategory,
                                              recipeName:
                                                  recipeList[index].recipeName,
                                              recipeImage:
                                                  recipeList[index].recipeImage,
                                              prepTime:
                                                  recipeList[index].prepTime,
                                              cookTime:
                                                  recipeList[index].cookTime,
                                            ),
                                          );
                                    },
                                    icon: Icon(
                                      Icons.bookmark_border,
                                      size: 22.0.sp,
                                    )),
                                OutlinedButton(
                                  onPressed: () {},
                                  child: Text(
                                    recipeList[index].recipeCategory,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
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
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RecipeScreen(),
                  settings: RouteSettings(arguments: recipeList[index]),
                ),
              ),
            );
          }),
    );
  }
}
