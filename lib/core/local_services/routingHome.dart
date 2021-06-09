import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quick_note/ui/screens/homePage.dart';
import 'package:quick_note/ui/screens/quadrant2.dart';
import 'package:quick_note/ui/screens/quadrant3.dart';
import 'package:quick_note/ui/screens/quadrant4.dart';

void route(
    DragEndDetails details, String currentPage, BuildContext context) {
  int sensitivity = 50;
  switch (currentPage) {
    case "/home":
      if (-details.velocity.pixelsPerSecond.dx > sensitivity && -details.velocity.pixelsPerSecond.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: BR(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        print(details.velocity.pixelsPerSecond.dx.toString() + "  "+ details.velocity.pixelsPerSecond.dy.toString()  + currentPage + "Diagonal Detected");
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      else if (-details.velocity.pixelsPerSecond.dx > sensitivity && -details.velocity.pixelsPerSecond.dy < sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: TR(),
                curve: Curves.easeOutQuad));
        print(details.velocity.pixelsPerSecond.dx.toString() + "  "+ details.velocity.pixelsPerSecond.dy.toString()  + currentPage + "right Detected");
      }
      else if (details.velocity.pixelsPerSecond.dx < sensitivity && -details.velocity.pixelsPerSecond.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: BL(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        print(details.velocity.pixelsPerSecond.dx.toString() + "  "+ details.velocity.pixelsPerSecond.dy.toString()  + currentPage + " down Detected");
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      break;
    case "/q2":
      if (details.velocity.pixelsPerSecond.dx > sensitivity && -details.velocity.pixelsPerSecond.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: BL(),
                curve: Curves.easeOutQuad));
        print(details.velocity.pixelsPerSecond.dx.toString() + "  "+ details.velocity.pixelsPerSecond.dy.toString()  + currentPage + "diagonal Detected");
      }
      else if (details.velocity.pixelsPerSecond.dx > sensitivity && -details.velocity.pixelsPerSecond.dy < sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: HomePage(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        print(details.velocity.pixelsPerSecond.dx.toString() + "  "+ details.velocity.pixelsPerSecond.dy.toString()  + currentPage + "left Detected");
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      else if (details.velocity.pixelsPerSecond.dx < sensitivity && -details.velocity.pixelsPerSecond.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: BR(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        print(details.velocity.pixelsPerSecond.dx.toString() + "  "+ details.velocity.pixelsPerSecond.dy.toString()  + currentPage + "down Detected");
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      break;
    case "/q3":
      if (-details.velocity.pixelsPerSecond.dx > sensitivity && details.velocity.pixelsPerSecond.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: TR(),
                curve: Curves.easeOutQuad));
        print(details.velocity.pixelsPerSecond.dx.toString() + "  "+ details.velocity.pixelsPerSecond.dy.toString()  + currentPage + "diagonal Detected");
      }
      else if (-details.velocity.pixelsPerSecond.dx > sensitivity && details.velocity.pixelsPerSecond.dy < sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: BR(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        print(details.velocity.pixelsPerSecond.dx.toString() + "  "+ details.velocity.pixelsPerSecond.dy.toString()  + currentPage + "right Detected");
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      else if (details.velocity.pixelsPerSecond.dx < sensitivity && details.velocity.pixelsPerSecond.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: HomePage(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        print(details.velocity.pixelsPerSecond.dx.toString() + "  "+ details.velocity.pixelsPerSecond.dy.toString()  + currentPage + "up Detected");
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      break;
    case "/q4":
      if (details.velocity.pixelsPerSecond.dx > sensitivity && details.velocity.pixelsPerSecond.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: HomePage(),
                curve: Curves.easeOutQuad));
        print(details.velocity.pixelsPerSecond.dx.toString() + "  "+ details.velocity.pixelsPerSecond.dy.toString()  + currentPage + "diagonal Detected");
      }
      else if (details.velocity.pixelsPerSecond.dx > sensitivity && details.velocity.pixelsPerSecond.dy < sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: BL(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        print(details.velocity.pixelsPerSecond.dx.toString() + "  "+ details.velocity.pixelsPerSecond.dy.toString()  + currentPage + "left Detected");
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      else if (details.velocity.pixelsPerSecond.dx < sensitivity && details.velocity.pixelsPerSecond.dy > sensitivity) {
        Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.size,
                child: TR(),
                alignment: Alignment.centerLeft,
                curve: Curves.easeOutQuad));
        print(details.velocity.pixelsPerSecond.dx.toString() + "  "+ details.velocity.pixelsPerSecond.dy.toString()  + currentPage + "up Detected");
        // Scaffold.of(context).showSnackBar(new SnackBar(content: Text("Diagonal Swipe Detected"), ));
      }
      break;
  }
}
