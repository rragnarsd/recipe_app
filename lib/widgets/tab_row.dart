import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TabRow extends StatelessWidget {
  const TabRow({
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
                const TabButtons(text: 'Filter'),
                SizedBox(
                  width: 2.0.h,
                ),
                const TabButtons(text: 'Sort'),
                SizedBox(
                  width: 2.0.h,
                ),
                const TabButtons(text: 'Category'),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class TabButtons extends StatelessWidget {
  final String text;
  const TabButtons({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3.5,
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