import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quick_note/ui/screens/homePage.dart';
import 'package:quick_note/ui/screens/quadrant2.dart';
import 'package:quick_note/ui/screens/quadrant3.dart';
import 'package:quick_note/ui/screens/quadrant4.dart';

void route(
    DragUpdateDetails details, String currentPage, BuildContext context) {
  int sensitivity = 20;
  switch (currentPage) {
    case "/home":
      /*if (-details.delta.dx > sensitivity && -details.delta.dy > sensitivity) {
        print("Diagonal Swipe Detected");
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: BR(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      else */if (-details.delta.dx > sensitivity && -details.delta.dy < sensitivity) {
        print("Diagonal Swipe Detected");
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: TR(),
                curve: Curves.easeOutQuad));
      }
      else if (details.delta.dx < sensitivity && -details.delta.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: BL(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      break;
    case "/q2":
      /*if (details.delta.dx > sensitivity && -details.delta.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: BL(),
                curve: Curves.easeOutQuad));
      }
      else */if (details.delta.dx > sensitivity && -details.delta.dy < sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: HomePage(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      else if (details.delta.dx < sensitivity && -details.delta.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: BR(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      break;
    case "/q3":
      /*if (-details.delta.dx > sensitivity && details.delta.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: TR(),
                curve: Curves.easeOutQuad));
      }
      else */if (-details.delta.dx > sensitivity && details.delta.dy < sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: BR(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      else if (details.delta.dx < sensitivity && details.delta.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: HomePage(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      break;
    case "/q4":
      /*if (details.delta.dx > sensitivity && details.delta.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: HomePage(),
                curve: Curves.easeOutQuad));
      }
      else */if (details.delta.dx > sensitivity && details.delta.dy < sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: BL(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      else if (details.delta.dx < sensitivity && details.delta.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: TR(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      break;
  }
}
