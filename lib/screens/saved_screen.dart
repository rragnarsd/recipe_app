import 'package:flutter/material.dart';
import 'package:recipe_app/utils/utils.dart';
import 'package:sizer/sizer.dart';
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
              const SavedTabButtons(),
              const SavedListView(),
              SizedBox(
                height: 2.0.h,
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
            return const SavedListItem();
          }),
    );
  }
}

class SavedListItem extends StatelessWidget {
  const SavedListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  'https://images.unsplash.com/photo-1556911220-e15b29be8c8f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80',
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
                    'Name',
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
                        'M Prep',
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
                        'M Cook',
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
                        onPressed: () {},
                        icon: Icon(
                          UniconsLine.bookmark,
                          size: 22.0.sp,
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Category',
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Theme.of(context).primaryColor,
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
  }
}
