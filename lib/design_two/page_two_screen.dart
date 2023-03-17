import 'package:flutter/material.dart';

class PageTwoScreen extends StatelessWidget {
  const PageTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 450,
                  width: double.infinity,
                  child: Image.network(
                      'https://images.pexels.com/photos/2146109/pexels-photo-2146109.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      fit: BoxFit.cover),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://images.pexels.com/photos/2146109/pexels-photo-2146109.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://images.pexels.com/photos/2146109/pexels-photo-2146109.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://images.pexels.com/photos/2146109/pexels-photo-2146109.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            'https://images.pexels.com/photos/2146109/pexels-photo-2146109.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 60.0),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing.',
                    style: TextStyle(
                        color: Colors.black38, letterSpacing: 0.8, height: 1.5),
                  ),
                )
              ],
            ),
            SafeArea(
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_rounded))),
            Container(
                margin: EdgeInsets.only(top: 400, left: 20),
                child: Text(
                  'New\nNatural ',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
                ))
          ],
        ),
      ),
    );
  }
}
