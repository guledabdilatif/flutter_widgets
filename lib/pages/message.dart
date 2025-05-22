import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 34, color: Colors.white),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
