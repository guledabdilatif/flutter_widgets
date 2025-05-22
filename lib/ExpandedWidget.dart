import 'package:flutter/material.dart';

class Expandedwidget extends StatelessWidget {
  const Expandedwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Expanded Widget"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        ),
        body: Row(
          children: [
            Expanded(child: Container(color: Colors.red)),
            Expanded(flex: 2, child: Container(color: Colors.green)),
            Expanded(
              // expanded widget will eaither be in row or column widget
              child: Container(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
