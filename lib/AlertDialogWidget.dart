import 'package:flutter/material.dart';

class Alertdialogwidget extends StatefulWidget {
  const Alertdialogwidget({super.key});

  @override
  State<Alertdialogwidget> createState() => _AlertdialogwidgetState();
}

class _AlertdialogwidgetState extends State<Alertdialogwidget> {
  void showdialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text("Title"),
          content: Text("content"),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Ok"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("cancel"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: MaterialButton(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            onPressed: showdialog,
            color: Colors.red,
            child: Text("SHOW DIALOG", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
