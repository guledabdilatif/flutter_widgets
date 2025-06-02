import 'package:flutter/material.dart';

class Gesturedetectorwidget extends StatefulWidget {
  const Gesturedetectorwidget({super.key});

  @override
  State<Gesturedetectorwidget> createState() => _GesturedetectorwidgetState();
}

class _GesturedetectorwidgetState extends State<Gesturedetectorwidget> {
  var numberoftimestapped = 0;
  void increment() {
    setState(() {
      numberoftimestapped++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Gesture Detector"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "tapped"
                        " " +
                    numberoftimestapped.toString() +
                    " " +
                    "times",
              ),
              GestureDetector(
                onTap: increment,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 10,
                    right: 30,
                    left: 30,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text("TAP HERE", style: TextStyle(fontSize: 24)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
