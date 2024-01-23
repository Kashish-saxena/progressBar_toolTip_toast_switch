import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  late bool loading;
  @override
  void initState() {
    super.initState();
    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress Bar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            loading
                ? const LinearProgressIndicator(
                    minHeight: 10,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  )
                : const Text("Press button to Download"),
            loading ? const Text("Downloading...") : const Text(""),
            Tooltip(
                message: "Download",
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          loading = !loading;
                        });
                      },
                      icon: const Icon(Icons.download)),
                )),
          ],
        ),
      ),
    );
  }
}
