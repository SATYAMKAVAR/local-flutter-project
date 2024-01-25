import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  List<String> dice = ['assets/images/dice_1.jpg','assets/images/dice_2.jpg','assets/images/dice_3.jpg','assets/images/dice_4.jpg','assets/images/dice_5.jpg','assets/images/dice_6.jpg',];
  String img = '';
  int randomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              child: ElevatedButton(onPressed: () {
                setState(() {
                  randomIndex = Random().nextInt(6);
                  img = dice[randomIndex];
                });
              }, child: Text('Roll Dice')),
            ),
          ),
          Container(child: img==''?const Text('Plese Roll the Dice',style: TextStyle(fontSize: 30),):Image.asset(img),)
        ],
      )),
    );
  }
}
