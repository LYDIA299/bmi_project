import 'package:flutter/material.dart';

class GendaSelect extends StatefulWidget {
  const GendaSelect({super.key});

  @override
  State<GendaSelect> createState() => _GendaSelectState();
}

class _GendaSelectState extends State<GendaSelect> {
  int selectedGenda = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(25)),
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
                        : Color.fromARGB(255, 188, 178, 214),
                  )),
              Text(
                "Male",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: selectedGenda == 0
                        ? Colors.white
                        : Color.fromARGB(255, 188, 178, 214)),
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
                        : Color.fromARGB(255, 188, 178, 214),
                  )),
              Text(
                "Female",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: selectedGenda == 1
                        ? Colors.white
                        : Color.fromARGB(255, 188, 178, 214)),
              )
            ],
          )
        ],
      ),
    );
  }
}
