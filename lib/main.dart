import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const DiceApp());

class DiceApp extends StatelessWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("Dice"),
          centerTitle: true,
          backgroundColor: Colors.black12,
        ),
        body: const Dices(),
      ),
    );
  }
}

class Dices extends StatefulWidget {
  const Dices({Key? key}) : super(key: key);

  @override
  State<Dices> createState() => _DicesState();
}

class _DicesState extends State<Dices> {
  int LeftDiceNumber = 1 , RightDiceNumber=1;

  void changeDiceFaces(){
    setState(() {
      LeftDiceNumber = Random().nextInt(6) + 1;
      RightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {



    return Center(
      child: Row(
        children: [
          Expanded(

            child: TextButton(
              onPressed: () {
                changeDiceFaces();
                print("The Left dice is $LeftDiceNumber is pressed");
              },
              child: Image.asset('images/dice$LeftDiceNumber.png'),

            ),
          ),
          Expanded(

            child: TextButton(
              onPressed: () {
                changeDiceFaces();
                print("The Right Dice is $RightDiceNumber pressed.");
              },
              child: Image.asset('images/dice$RightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

