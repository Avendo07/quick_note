import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quick_note/core/local_services/routingHome.dart';
import 'package:quick_note/ui/screens/quadrant2.dart';
import 'package:quick_note/ui/screens/quadrant4.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String t = "Hello";
  String t2 = "Hello";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(

        onPanEnd: (details) {
          route(details, "/home", context);
        },
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
      ),
    );
  }
}
