import 'package:flutter/material.dart';

class Design3 extends StatelessWidget {
  const Design3({super.key});

  Widget customExpandedContainer({required color, flex = 1}) {
    return Expanded(
        flex: flex,
        child: Container(
          color: color,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              customExpandedContainer(color: Colors.orange),
              Expanded(child: Column(
                children: [
                  customExpandedContainer(color: Colors.black),
                  customExpandedContainer(color: Colors.green),
                ],
              )),
              customExpandedContainer(color: Colors.tealAccent),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Row(
                children: [
                  customExpandedContainer(color: Colors.purple),
                  customExpandedContainer(color: Colors.brown),
                ],
              )),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        customExpandedContainer(color: Colors.pinkAccent),
                        customExpandedContainer(color: Colors.black26),
                        customExpandedContainer(color: Colors.green),
                      ],
                    )),
                    Expanded(
                        child: Row(
                      children: [
                        customExpandedContainer(color: Colors.lightGreenAccent),
                        customExpandedContainer(color: Colors.white),
                        customExpandedContainer(color: Colors.pink),
                      ],
                    )),
                    Expanded(
                        child: Row(
                      children: [
                        customExpandedContainer(color: Colors.black),
                        customExpandedContainer(color: Colors.black26),
                        customExpandedContainer(color: Colors.brown),
                      ],
                    )),
                  ],
                ),
              ),
              Expanded(child: Row(
                children: [
                  customExpandedContainer(color: Colors.white60),
                  customExpandedContainer(color: Colors.lightGreenAccent),
                ],
              )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              customExpandedContainer(color: Colors.teal),
              Expanded(child: Column(
                children: [
                  customExpandedContainer(color: Colors.pinkAccent),
                  customExpandedContainer(color: Colors.black26),
                ],
              )),
              customExpandedContainer(color: Colors.amberAccent),
            ],
          )),
        ],
      ),
    );
  }
}
