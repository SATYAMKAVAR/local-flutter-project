import 'package:flutter/material.dart';

class Design1 extends StatelessWidget {
  const Design1({super.key});

  Widget customExpandedContainer({required backgroundColor, flex = 1}) {
    return Expanded(
        flex: flex,
        child: Container(
          color: backgroundColor,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          customExpandedContainer(backgroundColor: Colors.red),
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  customExpandedContainer(
                      backgroundColor: Colors.pink, flex: 2),
                  Expanded(
                    child: Column(
                      children: [
                        customExpandedContainer(backgroundColor: Colors.black),
                        customExpandedContainer(
                            backgroundColor: Colors.yellowAccent),
                      ],
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  customExpandedContainer(backgroundColor: Colors.lightBlue),
                  customExpandedContainer(backgroundColor: Colors.tealAccent),
                  customExpandedContainer(backgroundColor: Colors.black26),
                ],
              )),
        ],
      ),
    );
  }
}
