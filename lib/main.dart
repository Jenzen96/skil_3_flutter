import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Center(
              child: Text('Magic 8 ball'),
          ),
          backgroundColor: Colors.blueAccent [500],
        ),
        body: EightBall(),
      ),
    )

  );
}



class EightBall extends StatefulWidget {
  const EightBall({Key? key}) : super(key: key);

  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {

  int magicBallNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    magicBallNumber = Random().nextInt(5) + 1;
                    print('I got clicked');
                  });
                }, child: Image.asset('images/ball$magicBallNumber.png'),
              ),
          ),
        ],
      ),
    );
  }
}

