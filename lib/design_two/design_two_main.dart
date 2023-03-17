import 'package:flutter/material.dart';
import 'package:jaapvuhoye/design_two/page_two_screen.dart';

class DesignTwoMain extends StatelessWidget {
  const DesignTwoMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 25,
                      child: Text(
                        'R',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageTwoScreen()));
                        },
                        icon: Icon(
                          Icons.menu,
                          size: 30,
                        ))
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                      height: 350,
                      child: Center(
                          child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                'Natural\nIngrediants',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ))),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 350,
                      child: Image.network(
                          'https://images.pexels.com/photos/807598/pexels-photo-807598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                      height: 350,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              '02',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            color: Colors.white,
                            width: 2,
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Container(
                        height: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Info',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              'More and more\n'
                              'people are opting\n'
                              'to the herbal life.',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
