import 'package:flutter/material.dart';

class Timepickerwidget extends StatefulWidget {
  const Timepickerwidget({super.key});

  @override
  State<Timepickerwidget> createState() => _TimepickerwidgetState();
}

class _TimepickerwidgetState extends State<Timepickerwidget> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 40);
  void _showtimepicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now()).then(
      (value) => setState(() {
        _timeOfDay = value!;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _timeOfDay.format(context).toString(),
              style: TextStyle(fontSize: 50),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: Colors.blue,
                onPressed: _showtimepicker,
                child: Text("Pick Time", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
