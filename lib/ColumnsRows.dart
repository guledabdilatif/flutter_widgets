import 'package:flutter/material.dart';

class ColumnsRows extends StatelessWidget {
  const ColumnsRows({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Columns and Rows"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: 100, height: 100, color: Colors.red),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,

                // borderRadius: BorderRadius.circular(20),
                // shape: BoxShape.circle,
              ),
              width: 100,
              height: 100,
            ),
            Container(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
