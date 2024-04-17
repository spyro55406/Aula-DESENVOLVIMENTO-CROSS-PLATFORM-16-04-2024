import '../constants.dart';
import 'package:flutter/material.dart';

class SliderAltura extends StatelessWidget {
  final void Function(double) onChanged;
  final int altura;
  const SliderAltura({super.key, required this.onChanged, required this.altura});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'ALTURA',
          style: labelTextStyle,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              '$altura',
              style: numberTextStyle,
            ),
            Text(
              'cm',
              style: labelTextStyle,
            ),
          ],
        ),
        Slider(
          min: 120,
          max: 220,
          value: altura.toDouble(),
          onChanged: (double value) {
            onChanged(value);
          },
        )
      ],
    );
  }
}
