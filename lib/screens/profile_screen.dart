import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
                height: 40.0,
              ),
              Text(
                'Profile',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 20.0,
              ),
              ProfileHeader(),
              ProfileListView()
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileListView extends StatelessWidget {
  const ProfileListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          children: const [
            ProfileListTile(
              text: 'Account',
              icon: UniconsLine.user_circle,
            ),
            ProfileListTile(
              text: 'Settings',
              icon: UniconsLine.setting,
            ),
            ProfileListTile(
              text: 'App Info',
              icon: UniconsLine.info_circle,
            ),
            ProfileListTile(
              text: 'Logout',
              icon: UniconsLine.sign_out_alt,
            ),
          ]),
    );
  }
}

class ProfileListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  const ProfileListTile({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5.0),
      elevation: 2.0,
      child: ListTile(
        title: Text(text, style: Theme.of(context).textTheme.headline3),
        horizontalTitleGap: 5.0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(icon, color: Theme.of(context).iconTheme.color),
        ),
        trailing: Icon(
          UniconsLine.angle_right,
          size: 30.0,
          color: Theme.of(context).iconTheme.color,
        ),
        onTap: () {},
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 140.0,
          decoration: BoxDecoration(color: Colors.grey.shade200,
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: CachedNetworkImageProvider(
                  'https://images.unsplash.com/photo-1556911220-e15b29be8c8f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80'),
              fit: BoxFit.fitHeight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          'Devina Hermawan',
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text('Email Address', style: Theme.of(context).textTheme.headline5),
      ],
    );
  }
}
