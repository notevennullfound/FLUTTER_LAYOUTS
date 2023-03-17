import 'package:flutter/material.dart';
import 'single_post.dart';
class MyPosts extends StatelessWidget {
  const MyPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 370),
      child: Column(
        children: [
          Column(
            children: const [
              SinglePost('one.jpeg'),
              SinglePost('two.jpg'),
              SinglePost('one.jpeg'),
              SinglePost('two.jpg'),
              SinglePost('one.jpeg'),
              SinglePost('two.jpg'),
            ],
          )
        ],
      ),
    );
  }
}
