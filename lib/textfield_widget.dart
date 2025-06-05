import 'package:flutter/material.dart';

class TextfieldWidget extends StatefulWidget {
  const TextfieldWidget({super.key});

  @override
  State<TextfieldWidget> createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
  final _textController = TextEditingController();
  String userPost = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(
              child: SizedBox(height: 400, width: 400, child: Text(userPost)),
            ),

            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: "What is on your mind",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textController.clear();
                  },
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text("tweet", style: TextStyle(color: Colors.white)),
              onPressed: () {
                setState(() {
                  userPost = _textController.text;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
