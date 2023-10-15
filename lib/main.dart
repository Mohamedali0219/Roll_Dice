import 'package:flutter/material.dart';
import 'package:roll_dice/views/roll_dice_view.dart';

void main() => runApp(const RollDice());

class RollDice extends StatelessWidget {
  const RollDice({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RollDiceView(),
    );
  }
}
