import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
              'https://images.unsplash.com/photo-1492739159057-7d1896b3c63f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1032&q=80'),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                const Text('Salmon Steak'),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Dinner'),
                ),
                Row(
                  children: [
                    Row(
                      children: [Icon(UniconsLine.clock), Text('Prep Time')],
                    ),
                    Row(
                      children: [Icon(UniconsLine.clock), Text('Prep Time')],
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(UniconsLine.users_alt),
                    Text('Sharing')
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
