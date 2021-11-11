import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_api/utils/category_list.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          child: GridView.builder(
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
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
                      bottom: 30.0,
                      left: 10.0,
                      child: Text(
                        items[index].category,
                        style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                );
              }),
      ),
    );
  }
}
