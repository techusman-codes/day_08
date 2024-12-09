import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // variable
  int numberOfTimesTapped = 0;

  // method
  void _increseNumber() {
    setState(() {
      numberOfTimesTapped++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Tapped  ${numberOfTimesTapped}  times',
              style: TextStyle(fontSize: 30),
            ),
            GestureDetector(
              onTap: _increseNumber,
              child: Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.blue[200],
                  child: const Text(
                    "Tap Here",
                    style: TextStyle(fontSize: 30),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
