import 'package:flutter/material.dart';

class DivideScreen extends StatelessWidget {
  const DivideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Expanded(
                // flex:1,
                  child: Container(
                color: Colors.cyan,
              )),
              Expanded(
                  child: Container(
                color: Colors.pink,
              )),
              Expanded(
                  child: Container(
                color: Colors.black,
              ))
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Expanded(
                flex:2,
                  child: Container(
                color: Colors.grey
              )),
              Expanded(
                flex: 2,
                  child: Container(
                color: Colors.green,
              )),
              Expanded(
                flex: 1,
                  child: Container(
                color: Colors.yellowAccent,
              ))
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Expanded(
                flex:1,
                  child: Container(
                color: Colors.blueAccent,
              )),
              Expanded(
                flex: 3,
                  child: Container(
                color: Colors.amber,
              )),
              Expanded(
                flex: 2,
                  child: Container(
                color: Colors.deepOrange,
              ))
            ],
          ))
        ],
      ),
    );
  }
}
