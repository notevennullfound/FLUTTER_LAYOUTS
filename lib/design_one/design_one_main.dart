import 'package:flutter/material.dart';

import 'my_app_bar.dart';
import 'my_posts.dart';
import 'my_style.dart';
import 'profile.dart';

class DesignOneMain extends StatelessWidget {
  const DesignOneMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: ListView(
          children: [
            Stack(
              children: const [
                MyPosts(),
                MyProfile(),
                MyAppBar(),
              ],
            )
          ],
        ),
      ),
    );
  }
}