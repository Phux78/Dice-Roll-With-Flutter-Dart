import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
      setState(() {
        currentDiceRoll = randomizer.nextInt(6)+1;

    });
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/image/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(height: 20,), // *or use padding at the comment below 
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    /* padding: const EdgeInsets.only(
                      top: 20
                    ), */               //*this comment
                    foregroundColor: Colors.white, 
                    textStyle: const TextStyle(
                      fontSize: 28,),
                      ),
                child: const Text('Roll Dice'))
          ],
        );
  }
}