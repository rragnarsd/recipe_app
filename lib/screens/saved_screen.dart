import 'package:flutter/material.dart';
import 'package:recipe_api/utils/category_list.dart';
import 'package:recipe_api/widgets/network_image.dart';
import 'package:unicons/unicons.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

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
              const SizedBox(
                height: 40.0,
              ),
              Text(
                'Saved',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const SavedTabButtons(),
              const SavedListView(),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SavedTabButtons extends StatelessWidget {
  const SavedTabButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40.0,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                TabButton(text: 'Filter'),
                SizedBox(
                  width: 10.0,
                ),
                TabButton(text: 'Sort'),
                SizedBox(
                  width: 10.0,
                ),
                TabButton(text: 'Category'),
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
                color: Colors.black87,
              ),
        ),
      ),
    );
  }
}

class SavedListView extends StatelessWidget {
  const SavedListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: SizedBox(
                height: 120.0,
                child: Material(
                  color: Colors.white,
                  elevation: 2.0,
                  child: Row(
                    children: [
                      const ReusableNetworkImage(
                        imageUrl:
                            'https://images.unsplash.com/photo-1490645935967-10de6ba17061?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1706&q=80',
                        height: 120.0,
                        width: 120.0,
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Beef Steak',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                UniconsLine.clock,
                                size: 16.0,
                                color: Colors.grey.shade500,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'Prep Time',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                UniconsLine.clock,
                                size: 16.0,
                                color: Colors.grey.shade500,
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'Cook Time',
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
                                Expanded(
                                  child: OutlinedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Category',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                          color: Colors.black87,
                                        ),
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
    );
  }
}
