import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isDark = false;
  ThemeMode mode = ThemeMode.system;

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      mode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(),
      themeMode: mode,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Switch Demo",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Dark Vs Light Theme",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Switch(
                value: isDark,
                onChanged: (value) {
                  if (value == true) {
                    changeTheme(ThemeMode.dark);
                    isDark = !isDark;
                  } else {
                    changeTheme(ThemeMode.light);
                    isDark = !isDark;
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
