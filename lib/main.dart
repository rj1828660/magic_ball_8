import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Ask Me Anything"),
          backgroundColor: Color.fromARGB(255, 7, 121, 113)),
      body: Ball(),
      backgroundColor: Color.fromARGB(161, 33, 243, 79),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () =>
                    {setState(() => ballNumber = Random().nextInt(5) + 1)},
                child: Image.asset('images/ball$ballNumber.png')),
          )
        ],
      ),
    );
  }
}
