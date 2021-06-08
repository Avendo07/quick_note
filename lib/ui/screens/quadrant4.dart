import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BR extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: Colors.black,height: MediaQuery.of(context).size.height*0.96,child: Center(child: Text("Quadrant 4"))));
  }

}