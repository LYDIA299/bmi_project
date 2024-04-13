import 'dart:math';

import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

class Calculations extends StatefulWidget {
  void Function()? calculateBMI;
  Calculations({super.key, required this.calculateBMI});

  @override
  State<Calculations> createState() => _CalculationsState();
}

class _CalculationsState extends State<Calculations> {
  double calculate = 0;
  num weight = 50;
  num age = 16;
  int heightValue = 100;
  int selectedGenda = 0;

  void calculateBMI() {
    setState(() {
      calculate = weight / pow(heightValue / 100, 2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //genda select
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          selectedGenda = 0;
                        });
                      },
                      icon: Icon(
                        Icons.male,
                        size: 60.0,
                        color: selectedGenda == 0
                            ? Colors.white
                            : const Color.fromARGB(255, 188, 178, 214),
                      )),
                  Text(
                    "Male",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: selectedGenda == 0
                            ? Colors.white
                            : const Color.fromARGB(255, 188, 178, 214)),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          selectedGenda = 1;
                        });
                      },
                      icon: Icon(
                        Icons.female,
                        size: 60.0,
                        color: selectedGenda == 1
                            ? Colors.white
                            : const Color.fromARGB(255, 188, 178, 214),
                      )),
                  Text(
                    "Female",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: selectedGenda == 1
                            ? Colors.white
                            : const Color.fromARGB(255, 188, 178, 214)),
                  )
                ],
              )
            ],
          ),
        ),

        //height measurement
        Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(25)),
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
                  value: heightValue.toDouble(),
                  activeColor: Colors.white,
                  inactiveColor: const Color.fromARGB(255, 188, 178, 214),
                  label: 'Set volume value',
                  onChanged: (double value) {
                    setState(() {
                      heightValue = value.round();
                    });
                  },
                ),
                Text("$heightValue cm", style: const TextStyle(fontSize: 20))
              ],
            )),

        //weight and age
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //weight
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              //width: MediaQuery.of(context).size.width / 2.5,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  const Text(
                    "Weight",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ItemCount(
                    initialValue: weight,
                    minValue: 0,
                    maxValue: 200,
                    onChanged: (value) {
                      setState(() {
                        weight = value;
                      });
                    },
                    decimalPlaces: 1,
                    textStyle: const TextStyle(fontWeight: FontWeight.w900),
                    buttonSizeHeight: 35.0,
                    buttonSizeWidth: 50.0,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  )
                ],
              ),
            ),
            //age
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              //width: MediaQuery.of(context).size.width / 2.5,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  const Text(
                    "Age",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ItemCount(
                    initialValue: age,
                    minValue: 0,
                    maxValue: 200,
                    onChanged: (value) {
                      setState(() {
                        age = value;
                      });
                    },
                    decimalPlaces: 1,
                    textStyle: const TextStyle(fontWeight: FontWeight.w900),
                    buttonSizeHeight: 35.0,
                    buttonSizeWidth: 50.0,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  )
                ],
              ),
            )
          ],
        ),

        // results
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            "BMI: $calculate",
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
