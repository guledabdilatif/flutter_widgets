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
  var boxcolor = Colors.deepPurple;
  void expandBox() {
    setState(() {
      boxheight = 200;
      boxwidth = 200;
      boxcolor = Colors.amber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: GestureDetector(
          onTap: expandBox,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            color: boxcolor,
            height: boxheight,
            width: boxwidth,
            child: Center(child: Text("Animated Container")),
          ),
        ),
      ),
    );
  }
}
