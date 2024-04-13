import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

class WeightAge extends StatefulWidget {
  late num weight;
  late num age;
  WeightAge({super.key, required this.weight, required this.age});

  @override
  State<WeightAge> createState() => _WeightAgeState();
}

class _WeightAgeState extends State<WeightAge> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                initialValue: widget.weight,
                minValue: 0,
                maxValue: 200,
                onChanged: (value) {
                  setState(() {
                    widget.weight = value;
                  });
                },
                decimalPlaces: 1,
                textStyle: TextStyle(fontWeight: FontWeight.w900),
                buttonSizeHeight: 35.0,
                buttonSizeWidth: 50.0,
                color: Color.fromARGB(255, 255, 255, 255),
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
                initialValue: widget.age,
                minValue: 0,
                maxValue: 200,
                onChanged: (value) {
                  setState(() {
                    widget.age = value;
                  });
                },
                decimalPlaces: 1,
                textStyle: TextStyle(fontWeight: FontWeight.w900),
                buttonSizeHeight: 35.0,
                buttonSizeWidth: 50.0,
                color: Color.fromARGB(255, 255, 255, 255),
              )
            ],
          ),
        )
      ],
    );
  }
}
