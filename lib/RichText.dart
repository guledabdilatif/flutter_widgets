import 'package:flutter/material.dart';

class Richtext extends StatelessWidget {
  const Richtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Text Rich"),
      ),
      body: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: "This is textSpan"),
            TextSpan(
              text:
                  "Lorem Ipsum is simply dummy text of the printing and  unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            ),
          ],
        ),
      ),
    );
  }
}
