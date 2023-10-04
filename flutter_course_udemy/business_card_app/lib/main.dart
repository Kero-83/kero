import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 18, 66),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                width: 60,
                height: 80,
              ),
              Container(
                width: 280,
                height: 280,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/kero.jpg'),
                  ),
                ),
              ),
              const Text(
                'Kero Fawzy',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                width: 70,
                height: 8,
              ),
              const Text(
                'JUNIOR SOFTWARE ENGINEER',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 70,
                height: 50,
              ),
              Container(
                width: 400,
                height: 55,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 227, 231, 255),
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    const Icon(Icons.call),
                    SizedBox(
                      width: 30,
                      height: 15,
                      child: Image.asset('images/Egypt.png'),
                    ),
                    const Text(
                      '(+20)1065628222',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12, width: 30),
              Container(
                width: 400,
                height: 55,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 227, 231, 255),
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Icon(Icons.mail),
                    SizedBox(
                      width: 30,
                      height: 10,
                    ),
                    Text(
                      'Kerosarwat83@gamil.com',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
