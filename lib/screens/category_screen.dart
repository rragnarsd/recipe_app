import 'package:flutter/material.dart';
import 'screens.dart';
import 'package:recipe_app/utils/utils.dart';
import 'package:recipe_app/widgets/widgets.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              //ATH skoða hæð
            /*  SizedBox(height: 50.0,),*/
              CategoryGridView(),
            ],
          ),
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
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: GridView.builder(
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
                    settings: RouteSettings(arguments: items[index].category),
                  ),
                ),
              );
          }),
    );
  }
}
