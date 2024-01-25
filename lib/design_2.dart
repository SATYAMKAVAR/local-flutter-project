import 'package:flutter/material.dart';

class Design2 extends StatelessWidget {
  const Design2({super.key});

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
              customExpandedContainer(color: Colors.orange, flex: 2),
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
              customExpandedContainer(color: Colors.teal),
              Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            customExpandedContainer(color: Colors.yellow),
                            customExpandedContainer(
                                color: Colors.black26, flex: 2),
                            customExpandedContainer(color: Colors.white),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            customExpandedContainer(color: Colors.green),
                            customExpandedContainer(color: Colors.black),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            customExpandedContainer(color: Colors.purpleAccent),
                            customExpandedContainer(
                                color: Colors.brown, flex: 2),
                            customExpandedContainer(
                                color: Colors.lightBlueAccent),
                          ],
                        ),
                      ),
                    ],
                  )),
              customExpandedContainer(color: Colors.amberAccent),
            ],
          )),
          Expanded(child: Row(
            children: [
              customExpandedContainer(color: Colors.purple),
              customExpandedContainer(color: Colors.tealAccent),
            ],
          ))
        ],
      ),
    );
  }
}
