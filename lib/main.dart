import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  final list = [
    "AskNilesh",
    "Dummy Text",
    "A",
    "Lorem Ipsum",
    "What is Lorem Ipsum",
    "flutter-layout",
    "Demo",
    "GridView",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexbox Layout Demo"),
      ),
      body: Wrap(
        children: list
            .map((data) => GestureDetector(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    margin: EdgeInsets.only(
                        left: 5.0, right: 5.0, top: 10.0, bottom: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0) //
                          ),
                    ),
                    child: Text(
                      data,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  onTap: () {},
                ))
            .toList(),
      ),
    );
  }
}
