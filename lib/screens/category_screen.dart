import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/screens/receipes_screen.dart';
import 'package:recipe_app/utils/category_list.dart';
import 'package:recipe_app/widgets/network_image.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SizedBox(
          child: CategoryGridView(),
        ),
      ),
    );
  }
}

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
            return InkWell(
              child: Material(
                color: Colors.white,
                elevation: 2.0,
                child: Stack(
                  children: [
                    ReusableNetworkImage(
                      imageUrl: items[index].image,
                      height: 200.0,
                      width: 200.0,
                    ),
                    Positioned(
                      bottom: 0.0,
                      child: Container(
                        width: 200.0,
                        color: Colors.black.withOpacity(0.35),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            items[index].category,
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RecipesScreen(),
                  settings: RouteSettings(arguments: items[index]),
                ),
              ),
            );
        });
  }
}
