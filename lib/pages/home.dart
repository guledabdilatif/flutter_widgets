import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 34, color: Colors.white),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
