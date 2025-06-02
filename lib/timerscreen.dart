import 'dart:async';
import 'package:flutter/material.dart';

class timerscreen extends StatefulWidget {
  const timerscreen({super.key});

  @override
  State<timerscreen> createState() => _timerscreenState();
}

class _timerscreenState extends State<timerscreen> {
  int timeleft = 6;
  void startCountdown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeleft > 0) {
        setState(() {
          timeleft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              timeleft == 0 ? 'DONE' : timeleft.toString(),
              style: TextStyle(fontSize: 50),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: startCountdown,
              child: Text("PRESS", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
