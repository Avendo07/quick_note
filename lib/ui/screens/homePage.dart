import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String t = "Hello";
  String t2 = "Hello";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: (details) {
        setState(() {
          t = details.localPosition.dx.toString();
        });
        setState(() {
          t2 = details.localPosition.dy.toString();
        });
      },
      onPanEnd: (details){},
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              children: [
                Text(t),
                Text(t2),
              ],
            ),
          ),
          height: 350,
          width: 120,
        ),
      ),
    );
  }
}
