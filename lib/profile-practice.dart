import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget customExpandedContainer(color, {flex = 1}) {
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
                Container(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back,
                        size: 40), // Using a Material icon
                    onPressed: () {
                      // Your onPressed functionality here
                    },
                  ),
                ),
                Expanded(
                    child: Container(
                      child: Text('Profile',textAlign: TextAlign.center,),
                    )),
                Container(
                  child: IconButton(
                    icon: Icon(Icons.settings,
                        size: 40), // Using a Material icon
                    onPressed: () {
                      // Your onPressed functionality here
                    },
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.account_circle, size: 180),
            // Using a Material icon
            onPressed: () {
              // Your onPressed functionality here
            },
          ),
          const Text(
            'Satyam Kavar',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text('satyamkavar@gmail.com'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      print('Button 1 is prresed');
                    },
                    child: Text('Button 1')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      print('Button 2 is prresed');
                    },
                    child: Text('Button 2')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      print('Button 3 is prresed');
                    },
                    child: Text('Button 3')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      print('Button 4 is prresed');
                    },
                    child: Text('Button 4')),
              )
            ],
          ),
          Expanded(
            child: Row(
              children: [
                customExpandedContainer(Colors.orange),
                customExpandedContainer(Colors.tealAccent),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                customExpandedContainer(Colors.pink),
                customExpandedContainer(Colors.orange),
                customExpandedContainer(Colors.tealAccent),
              ],
            ),
          )
        ],
      ),
    );
  }
}
