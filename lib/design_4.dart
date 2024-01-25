import 'package:flutter/material.dart';

class Design4 extends StatelessWidget {
  const Design4({super.key});

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
              Expanded(
                  child: Column(
                children: [
                  customExpandedContainer(color: Colors.orange),
                  customExpandedContainer(color: Colors.tealAccent),
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  customExpandedContainer(color: Colors.brown),
                  customExpandedContainer(color: Colors.lightGreenAccent),
                ],
              ))
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  customExpandedContainer(color: Colors.teal),
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          customExpandedContainer(color: Colors.grey),
                          customExpandedContainer(color: Colors.pink),
                          customExpandedContainer(
                              color: Colors.lightBlueAccent),
                        ],
                      )),
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          customExpandedContainer(color: Colors.amberAccent),
                          customExpandedContainer(color: Colors.lightBlue),
                          customExpandedContainer(color: Colors.lightBlueAccent),
                        ],
                      )),
                  customExpandedContainer(color: Colors.pink),
                  customExpandedContainer(color: Colors.teal),
                ],
              )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(child: Column(
                children: [
                  customExpandedContainer(color: Colors.purple),
                  customExpandedContainer(color: Colors.black26),
                  customExpandedContainer(color: Colors.lightGreenAccent),
                ],
              )),
              Expanded(child: Column(
                children: [
                  Expanded(child: Row(
                    children: [
                      customExpandedContainer(color: Colors.tealAccent,flex:2),
                      customExpandedContainer(color: Colors.orange  ),
                    ],
                  )),
                  Expanded(child: Row(
                    children: [
                      customExpandedContainer(color: Colors.lightBlue),
                      customExpandedContainer(color: Colors.pink,flex: 2),
                    ],
                  )),
                ],
              )),
            ],
          ))
        ],
      ),
    );
  }
}
