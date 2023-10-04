import 'package:flutter/material.dart';

void main() {
  runApp(const Birthday_Card());
}

// ignore: camel_case_types
class Birthday_Card extends StatelessWidget {
  const Birthday_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birthday Card',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home:
      Scaffold( 
      backgroundColor: const Color(0xffd2bcd5),
      body: Center(child: Image.asset('images/Birthday_card.png')),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
