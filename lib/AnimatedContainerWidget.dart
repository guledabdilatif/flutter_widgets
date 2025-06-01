import 'package:flutter/material.dart';

class Animatedcontainerwidget extends StatefulWidget {
  const Animatedcontainerwidget({super.key});

  @override
  State<Animatedcontainerwidget> createState() =>
      _AnimatedcontainerwidgetState();
}

class _AnimatedcontainerwidgetState extends State<Animatedcontainerwidget> {
  double boxheight = 100;
  double boxwidth = 100;
  double x = 1;
  double y = 1;
  var boxcolor = Colors.deepPurple;
  void expandBox() {
    setState(() {
      // boxheight = 300;
      // boxwidth = 300;
      x = 0;
      y = 0;
      boxcolor = Colors.amber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: GestureDetector(
        onTap: expandBox,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          alignment: Alignment(x, y),
          curve: Curves.easeInOut,
          // color: boxcolor,
          // height: boxheight,
          // width: boxwidth,
          child: Container(height: 100, width: 100, color: Colors.pink),
        ),
      ),
    );
  }
}
