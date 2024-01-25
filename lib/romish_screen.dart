import 'package:flutter/material.dart';


class Romishcreen extends StatelessWidget {
  const Romishcreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to our Sweets Store',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to our Sweets Store'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink[100],
                ),
                child: Center(
                  child: Text(
                    'S',
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink[900],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Card(
                margin: EdgeInsets.all(10),
                child: Text(
                  'You will be delighted',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Text(
                  'with our sweets!',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Text(
                  'There is something',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Text(
                  'for everyone to taste',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Text(
                  'It\'s wonderful',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}