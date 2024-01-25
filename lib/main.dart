// import 'package:firstapp/DivideScreen.dart';
// import 'package:firstapp/design_1.dart';
// import 'package:firstapp/design_2.dart';
// import 'package:firstapp/design_3.dart';
// import 'package:first app/design_4.dart';
// import 'package:firstapp/design_5.dart';
// import 'package:firstapp/img_demo.dart';
// import 'package:firstapp/dice.dart';
// import 'package:firstapp/img_demo.dart';
import 'package:firstapp/navigation.dart';
import 'package:firstapp/profile-practice.dart';
import 'package:firstapp/romish_screen.dart';
import 'package:firstapp/splash_screen.dart';
import 'package:firstapp/temp.dart';
import 'package:firstapp/textfield_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  temp(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
