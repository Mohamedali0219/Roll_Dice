import 'package:flutter/material.dart';
import 'package:roll_dice/widgets/dice_roller.dart';

// there are the same
Alignment startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// final getDate();   method return data cannot be const because it value changed

class RollDiceView extends StatelessWidget {
  const RollDiceView({super.key});
  final Color color1 = const Color.fromARGB(255, 80, 2, 38);
  final Color color2 = const Color.fromARGB(255, 84, 7, 98);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: const Color.fromRGBO(255, 0, 0, 0.6),
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [
            // Colors.amber,
            color1,
            color2,
          ],
        ),
      ),
      child: const DiceRoller(),
      /* Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 30,
              fontFamily: 'Pacifico',
            ),
          ),
        ),
      ),*/
    ));
  }
}
