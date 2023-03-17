import 'package:flutter/material.dart';
import 'my_style.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      height: 120,
      decoration: const BoxDecoration(
          color: Color(0xFFC9C9C9),
          borderRadius:
          BorderRadius.only(bottomLeft: Radius.circular(80.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("Profile",
          style: titleText,),
          Icon(Icons.search,size: 30.0,)
        ],
      ),
    );
  }
}
