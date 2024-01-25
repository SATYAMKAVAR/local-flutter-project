import 'package:flutter/material.dart';

class Design5 extends StatelessWidget {
  const Design5({super.key});

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
              customExpandedContainer(color: Colors.pinkAccent),
              customExpandedContainer(color: Colors.black26),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        customExpandedContainer(color: Colors.red),
                        customExpandedContainer(color: Colors.tealAccent),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        customExpandedContainer(color: Colors.teal),
                        customExpandedContainer(color: Colors.pinkAccent),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      customExpandedContainer(color: Colors.purple),
                      customExpandedContainer(color: Colors.brown),
                      customExpandedContainer(color: Colors.amber),
                    ],
                  )),
                  customExpandedContainer(color: Colors.green),
                ],
              )),
              customExpandedContainer(color: Colors.red),
              customExpandedContainer(color: Colors.pink),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              customExpandedContainer(color: Colors.grey),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      customExpandedContainer(color: Colors.amberAccent),
                      customExpandedContainer(color: Colors.brown),
                      customExpandedContainer(color: Colors.pinkAccent),
                    ],
                  )),
                  Expanded(
                    flex: 2,
                      child: Column(
                    children: [
                      customExpandedContainer(color: Colors.tealAccent),
                      customExpandedContainer(color: Colors.green),
                    ],
                  )),
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  customExpandedContainer(color: Colors.green),
                  Expanded(
                      child: Row(
                    children: [
                      customExpandedContainer(color: Colors.purple),
                      customExpandedContainer(color: Colors.brown),
                      customExpandedContainer(color: Colors.amber),
                    ],
                  )),
                ],
              )),
            ],
          )),
        ],
      ),
    );
  }
}
