import 'package:flutter/material.dart';

class PageThreeScreen extends StatefulWidget {
  const PageThreeScreen({Key? key}) : super(key: key);

  @override
  State<PageThreeScreen> createState() => _PageThreeScreenState();
}

class _PageThreeScreenState extends State<PageThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              //background
              Container(
                height: MediaQuery.of(context).size.height / 2,
                color: Color(0xFF0F2940),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert_rounded,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 40.0, bottom: 30),
                  child: Text(
                    'Mountain\nPackages',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 38),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                  'https://images.unsplash.com/photo-1585409677983-0f6c41ca9c3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
                                  fit: BoxFit.cover),
                            ),
                            margin: EdgeInsets.all(20.0),
                            height: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Container(
                            margin: EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                  'https://images.unsplash.com/photo-1503435980610-a51f3ddfee50?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                                  fit: BoxFit.cover),
                            ),
                            height: 250,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Sort by',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text('Price',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.all(20.0),
                                  child: Icon(
                                    Icons.arrow_downward_rounded,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                  'https://images.unsplash.com/photo-1589182373726-e4f658ab50f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                                  fit: BoxFit.cover),
                            ),
                            height: 250,
                            margin: EdgeInsets.all(20.0),
                          ),
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                  'https://images.unsplash.com/photo-1446329813274-7c9036bd9a1f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                  fit: BoxFit.cover),
                            ),
                            height: 250,
                            margin: EdgeInsets.all(20.0),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
