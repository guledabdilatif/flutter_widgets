import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stackwidget extends StatelessWidget {
  const Stackwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(height: 300, width: 300, color: Colors.red[100]),
            Container(height: 200, width: 200, color: Colors.red[200]),
            Container(height: 100, width: 100, color: Colors.red[300]),
          ],
        ),
      ),
    );
  }
}
