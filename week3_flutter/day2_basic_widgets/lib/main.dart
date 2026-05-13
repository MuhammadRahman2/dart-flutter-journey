import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.flutter_dash_outlined, size: 55),
                SizedBox(height: 10),
                Text("hello"),
                Text("Welcome to Flutter"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
