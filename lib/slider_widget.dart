import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(currentValue.toString(), style: TextStyle(fontSize: 30)),
          Slider(
            min: 0,
            max: 10,
            divisions: 10,
            value: currentValue,
            label: currentValue.toString(),
            activeColor: Colors.red,
            inactiveColor: Colors.orange,
            thumbColor: Colors.purpleAccent,
            onChanged: (value) {
              setState(() {
                currentValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
