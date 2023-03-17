import 'package:flutter/material.dart';
import 'package:jaapvuhoye/design_three/page_two_screen.dart';

class DesignThreeMain extends StatefulWidget {
  const DesignThreeMain({Key? key}) : super(key: key);

  @override
  State<DesignThreeMain> createState() => _DesignThreeMainState();
}

class _DesignThreeMainState extends State<DesignThreeMain> {
  final String image = '';

  int currentIndex = 0;
  List<String> buttonList01 = [
    'https://images.unsplash.com/photo-1589182373726-e4f658ab50f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1589182373726-e4f658ab50f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
  ];
  List<String> buttonList02 = [
    'https://images.unsplash.com/photo-1476041026529-411f6ae1de3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1964&q=80',
    'https://images.unsplash.com/photo-1476041026529-411f6ae1de3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1964&q=80',
  ];
  List<String> buttonList03 = [
    'https://images.unsplash.com/photo-1503435980610-a51f3ddfee50?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1503435980610-a51f3ddfee50?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
  ];
  List<String> mainList = [];

  @override
  void initState() {
    mainList = buttonList01;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                color: Color(0xFF0F2490),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PageThreeScreen()));
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, top: 40.0, bottom: 30),
                child: Text(
                  'Explore\nThe World',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 38),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return RotatedBox(
                        quarterTurns: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentIndex = 2;
                                    mainList = buttonList03;
                                  });
                                },
                                child: Text(
                                  'FLUTTER',
                                  style: TextStyle(
                                      color: currentIndex == 2
                                          ? Colors.amber
                                          : Colors.black),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentIndex = 1;
                                    mainList = buttonList02;
                                  });
                                },
                                child: Text('FLUTTER',
                                    style: TextStyle(
                                        color: currentIndex == 1
                                            ? Colors.amber
                                            : Colors.black)),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentIndex = 0;
                                    mainList = buttonList01;
                                  });
                                },
                                child: Text('FLUTTER',
                                    style: TextStyle(
                                        color: currentIndex == 0
                                            ? Colors.amber
                                            : Colors.black)),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(20.0),
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.network(
                                    mainList[index - 1],
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              'Mountain',
                              style: TextStyle(fontSize: 26.0),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, bottom: 26.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.amber,
                                ),
                                Text(
                                  'Mountain',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    }
                  },
                  itemCount: mainList.length + 1,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
