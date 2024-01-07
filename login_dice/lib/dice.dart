
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  int leftDice = 1;
  int rightDice = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text('Dice'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset('images/dice$leftDice.png'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Image.asset('images/dice$rightDice.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  leftDice = Random().nextInt(6)+1;
                  rightDice = Random().nextInt(6)+1;
                });
                showToast("Left dice {$leftDice}, Right dice {$rightDice}");
              },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor:
                  Colors.orangeAccent, // foreground
                  textStyle: const TextStyle(
                      color: Colors.amber, fontSize: 20),
                ),
                child:  const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 50,
            ),
            ),
          ],
        ),
      ),
    );
  }
}

void showToast(String message){
  Fluttertoast.showToast(msg: message,
  backgroundColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    textColor: Colors.blue,
  );
}