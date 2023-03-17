import 'package:flutter/material.dart';
import 'package:jaapvuhoye/design_one/design_one_main.dart';
import 'package:jaapvuhoye/design_three/design_three_main.dart';
import 'package:jaapvuhoye/design_two/design_two_main.dart';

// for design one => DesignOneMain
// for design two => DesignTwoMain
// for design three => DesignThreeMain

void main() {
  runApp(
    const MaterialApp(
      home:  DesignOneMain(),
      debugShowCheckedModeBanner: false,
    ),
  );
}


