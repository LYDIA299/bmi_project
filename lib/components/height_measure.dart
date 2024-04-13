import 'dart:ffi';

import 'package:flutter/material.dart';

class HeightMeasure extends StatefulWidget {
  const HeightMeasure({super.key});

  @override
  State<HeightMeasure> createState() => _HeightMeasureState();
}

class _HeightMeasureState extends State<HeightMeasure> {
  int _heightValue = 150;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blueAccent, borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            const Text(
              "Height",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Slider(
              min: 10,
              max: 200,
              divisions: 200,
              value: _heightValue.toDouble(),
              activeColor: Colors.white,
              inactiveColor: Color.fromARGB(255, 188, 178, 214),
              label: 'Set volume value',
              onChanged: (double value) {
                setState(() {
                  _heightValue = value.round();
                });
              },
            ),
            Text("$_heightValue cm", style: const TextStyle(fontSize: 20))
          ],
        ));
  }
}
