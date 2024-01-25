import 'package:flutter/material.dart';

class ImgDemo extends StatelessWidget {
  const ImgDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/img.png',fit: BoxFit.fill,),
          ],
        ), );
  }
}
