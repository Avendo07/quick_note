import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_note/core/local_services/routingHome.dart';

class TR extends StatelessWidget{
  static String routeName = "/q2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
            onPanUpdate: (details) {
              route(details, routeName, context);
            },
            child: Container(
                color: Colors.black,
                height: MediaQuery.of(context).size.height,
                child: Center(child: Text("Quadrant 2", style: TextStyle(color: Colors.white),)))));
  }

}