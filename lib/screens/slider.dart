import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double sliderValue = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Slide to mark your progress"),
            Slider(
                value: sliderValue,
                divisions: 10,
                max: 100,
                label: sliderValue.round().toString(),
                allowedInteraction: SliderInteraction.slideThumb,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
