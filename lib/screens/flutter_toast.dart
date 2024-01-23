import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastWidget extends StatefulWidget {
  const FlutterToastWidget({super.key});

  @override
  State<FlutterToastWidget> createState() => _FlutterToastWidgetState();
}

class _FlutterToastWidgetState extends State<FlutterToastWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Toast"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Bottom Toast",
                    gravity: ToastGravity.BOTTOM,
                    textColor: Colors.white,
                  );
                },
                child: const Text(
                  "Click here to view bottom toast",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                  child: const Text(
                    "Click here to view center toast",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: "Centered Toast",
                      gravity: ToastGravity.CENTER,
                      textColor: Colors.white,
                    );
                  }),
            ],
          ),
        ));
  }
}
