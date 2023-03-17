import 'package:flutter/material.dart';

import 'my_style.dart';

class SinglePost extends StatelessWidget {

  final String str;

  const SinglePost(this.str, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                topLeft: Radius.circular(50),
              )
          ),
          margin: EdgeInsets.only(left: 30.0),
          height: 150,
          width: double.infinity,
          child: ClipRRect(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),child: Image.asset('assets/$str',fit: BoxFit.cover,)),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          margin: EdgeInsets.only(left: 80.0,right: 5.0,bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subscribe to Flutter Today',
                style: postText,
              ),

              Row(
                children: const [
                  Icon(
                    Icons.comment_outlined,
                    size: 14,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '15',
                    style: postText,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.favorite_border,
                    size: 14,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '150K',
                    style: postText,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
