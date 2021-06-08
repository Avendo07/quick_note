import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quick_note/ui/screens/quadrant2.dart';
import 'package:quick_note/ui/screens/quadrant4.dart';

class HomePage extends StatefulWidget {


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

        onPanUpdate: (details) {
          int sensitivity = 10;
          setState(() {
            t = details.delta.dx.toString();
          });
          setState(() {
            t2 = details.delta.dy.toString();
          });
          if(-details.delta.dx>sensitivity && -details.delta.dy<sensitivity){
            print("Diagonal Swipe Detected");
            Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child:TR(), curve: Curves.easeOutQuad));
          }
          if(-details.delta.dx>sensitivity && -details.delta.dy>sensitivity){
            print("Diagonal Swipe Detected");
            Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.size, child:BR(), alignment: Alignment.centerLeft, curve: Curves.easeOutQuad ));
            // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
          }
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
      ),
    );
  }
}
