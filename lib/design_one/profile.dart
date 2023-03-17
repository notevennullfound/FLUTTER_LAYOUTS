import 'package:flutter/material.dart';
import 'my_style.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 130),
      width: double.infinity,
      height: 350,

      decoration: const BoxDecoration(
          color: Color(0xFFD9D4D4),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0))),
      child: Column(
        children: [
        const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://cdn.britannica.com/89/164789-050-D6B5E2C7/Barack-Obama-2012.jpg'),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'GOHIL RAHUL',
            style: heading4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Icon(
                Icons.location_on,
                size: 16,
                color: Colors.grey,
              ),
              Text(
                'Gujurat',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: const [
                  Text('121',style: countText),
                  Text('Posts',style: followText,),
                ],
              ),
              const SizedBox(width: 24,),
              Column(
                children: const[
                  Text('20M',style: countText),
                  Text('Follower',style: followText,),
                ],
              ),
              const SizedBox(width: 24,),
              Column(
                children: const[
                  Text('0',style: countText),
                  Text('Following',style: followText,),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
