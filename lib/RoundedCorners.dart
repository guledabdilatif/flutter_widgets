import 'package:flutter/material.dart';

class Roundedcorners extends StatelessWidget {
  const Roundedcorners({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ClipRRect"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: ClipRRect(
            // borderRadius: BorderRadius.circular(40),
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(40),
              right: Radius.circular(40),
            ),
            // borderRadius: BorderRadius.only(
            //   topLeft: Radius.circular(30),
            //   bottomLeft: Radius.circular(30),
            // ),
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
