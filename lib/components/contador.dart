import '../constants.dart';
import 'package:flutter/material.dart';

class Contador extends StatelessWidget {
  const Contador({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '?',
          style: labelTextStyle,
        ),
        const Text(
          '80',
          style: numberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: activeCardColour,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              width: 10.0,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: activeCardColour,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: const Icon(Icons.add),
            )
          ],
        )
      ],
    );
  }
}
