import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.network(
              'https://images.unsplash.com/photo-1492739159057-7d1896b3c63f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1032&q=80'),
          Positioned(
            top: 200,
            left: 18.0,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              color: Colors.white,
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
                          SizedBox(width: 5.0,),
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
                  Divider(thickness: 2.0, color: Colors.grey.shade200),
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
