import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 34, color: Colors.white),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
