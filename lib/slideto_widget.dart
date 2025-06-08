import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SlidetoWidget extends StatefulWidget {
  const SlidetoWidget({super.key});

  @override
  State<SlidetoWidget> createState() => _SlidetoWidgetState();
}

class _SlidetoWidgetState extends State<SlidetoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SlideAction(
            borderRadius: 12,
            elevation: 1,
            innerColor: Colors.green,
            // textColor: Colors.white,
            outerColor: Colors.red,
            sliderButtonIcon: Icon(Icons.person, color: Colors.white),
            text: 'Slide To Pay',
            textStyle: TextStyle(fontSize: 30, color: Colors.white),
            sliderRotate: false,
            onSubmit: () {
              //do something
            },
          ),
        ),
      ),
    );
  }
}
