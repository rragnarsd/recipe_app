import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_api/utils/category_list.dart';

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
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              SizedBox(
                height: 200.0,
                width: 200.0,
                child: Image.network(
                  items[index].image,
                  fit: BoxFit.cover,
                ),
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
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}
