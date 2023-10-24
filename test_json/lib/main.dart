// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(App(
    title: 'Test Json',
  ));
}

class App extends StatefulWidget {
  const App({super.key, required this.title});
  final String title;
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Save Data'),
          ),
        ),
      ),
    );
  }
}
