import 'package:flutter/material.dart';

class TextFieldButton extends StatefulWidget {
  const TextFieldButton({super.key});

  @override
  State<TextFieldButton> createState() => _TextFieldButtonState();
}

class _TextFieldButtonState extends State<TextFieldButton> {
  TextEditingController name = TextEditingController();
  String _displayText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w300,
              fontFamily: AutofillHints.addressState,
            )),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30.0),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                    hintText: "abc@gmail.com",
                    labelText: "Enter Email",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                        borderRadius: BorderRadius.circular(30)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlueAccent),
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print(name);
                  setState(() {
                    _displayText = name.text;
                  });
                },
                onLongPress: () {
                  print(name.text);
                  setState(() {
                    _displayText = name.text;
                  });
                },
                child: Text("Print")),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text('$_displayText'),
            ),
          ],
        ),
      ),
    );
  }
}
