// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Toku());
}

class Toku extends StatelessWidget {
  const Toku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
          child: Text(
            "Toku",
            style: TextStyle(backgroundColor: Color(0xff46322b)),
          ),
        ),
      ),
      body: Column(
        children: [
          // Category(),
        ],
      ),
      ),
    );
  }
}
