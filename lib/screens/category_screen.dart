import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: [
            Stack(
              children: [
                Image.network(
                    'https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', fit: BoxFit.cover,),
                Positioned(
                    bottom: 30.0,
                    left: 10.0,
                    child: Text(
                      'Breakfast',
                      style: TextStyle(fontSize: 20.0),
                    ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
