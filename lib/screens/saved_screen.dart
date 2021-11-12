import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: ListView.builder(
                    itemCount: 5,
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: SavedTile(),
                  );
                }),
              )
            ],
          ),
      ),
        ),
    );
  }
}

class SavedTile extends StatelessWidget {
/*  final String text;
  final String image;
  final String cookTime;
  final String prepTime;*/
  const SavedTile(
      {Key? key,
/*      required this.text,
      required this.image,
      required this.cookTime,
      required this.prepTime*/})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            SizedBox(
              height: 120.0,
              width: 140.0,
              child: Image.network(
                'https://images.unsplash.com/photo-1490645935967-10de6ba17061?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1706&q=80',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Beef Steak',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5.0,),
                Text(
                  'Prep Time',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 5.0,),
                Text(
                  'Cook Time',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        UniconsLine.bookmark,
                        size: 30.0,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Category'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
