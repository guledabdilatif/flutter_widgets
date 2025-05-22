import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Balance"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 34, color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text("Balance Page Content")),
    );
  }
}
