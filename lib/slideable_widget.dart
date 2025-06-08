import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlideableWidget extends StatelessWidget {
  const SlideableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(
            motion: StretchMotion(),

            children: [
              SlidableAction(
                onPressed: ((context) => {}),
                icon: Icons.phone,
                backgroundColor: Colors.green,
              ),
              SlidableAction(
                onPressed: ((context) => {}),
                icon: Icons.chat,
                backgroundColor: Colors.blue,
              ),
            ],
          ),
          endActionPane: ActionPane(
            motion: StretchMotion(),

            children: [
              SlidableAction(
                onPressed: ((context) => {}),
                icon: Icons.delete,
                backgroundColor: Colors.green,
              ),
              SlidableAction(
                onPressed: ((context) => {}),
                icon: Icons.mail,
                backgroundColor: Colors.blue,
              ),
            ],
          ),
          child: Container(
            color: Colors.grey[100],
            child: ListTile(
              title: Text("guledabdilatif"),
              subtitle: Text("mohamud"),
              leading: Icon(Icons.person, size: 50),
            ),
          ),
        ),
      ),
    );
  }
}
