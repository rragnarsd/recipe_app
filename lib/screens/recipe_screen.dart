import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(clipBehavior: Clip.none, children: [
          Image.network(
            'https://images.unsplash.com/photo-1492739159057-7d1896b3c63f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1032&q=80',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 180.0,
            left: 18.0,
            child: Column(
              children: const [
                RecipeAbout(),
                SizedBox(
                  height: 20.0,
                ),
                RecipeIngredient(),
                SizedBox(
                  height: 20.0,
                ),
                RecipeMethod(),
              ],
            ),
          ),
        ]),
      ),
    ),
    );
  }
}

class RecipeMethod extends StatelessWidget {
  const RecipeMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      color: Colors.grey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Method',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: const [
              Icon(UniconsLine.label),
              SizedBox(
                width: 5.0,
              ),
              Text('Marinate salmon with salt and pepper'),
            ],
          ),
          Row(
            children: const [
              Icon(UniconsLine.label),
              SizedBox(
                width: 5.0,
              ),
              Text('Heat a skillet until hot'),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class RecipeAbout extends StatelessWidget {
  const RecipeAbout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      color: Colors.grey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Salmon Steak',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: const [
                  Icon(
                    UniconsLine.share,
                    size: 26.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    UniconsLine.bookmark,
                    size: 26.0,
                  )
                ],
              )
            ],
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Dinner'),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Divider(thickness: 2.0, color: Colors.grey.shade400),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(UniconsLine.clock),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text('Prep Time')
                ],
              ),
              Row(
                children: const [
                  Icon(UniconsLine.clock),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text('Prep Time')
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: const [
              Icon(UniconsLine.users_alt),
              SizedBox(
                width: 5.0,
              ),
              Text('Sharing')
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class RecipeIngredient extends StatelessWidget {
  const RecipeIngredient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      height: 120.0,
      width: MediaQuery.of(context).size.width / 1.1,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Ingredients',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(UniconsLine.check),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text('Salmon'),
                ],
              ),
              Row(
                children: const [
                  Icon(UniconsLine.check),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text('Salmon'),
                ],
              ),
              Row(
                children: const [
                  Icon(UniconsLine.check),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text('Salmon'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
