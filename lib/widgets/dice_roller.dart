import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int activateDiceImage = 1;

  void rollDice() {
    setState(() {
      activateDiceImage = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/dice-$activateDiceImage.png', height: 200),
          const SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () => rollDice(),
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 32,
                )),
            child: const Text('Roll Dice'),
          )
        ],
      ),
    );
  }
}
