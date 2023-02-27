import 'package:flutter/material.dart';
import 'package:project_nss/volunteer/widgets/camp_card.dart';
import 'package:project_nss/volunteer/widgets/program_card_2.dart';
class Vcamppage extends StatelessWidget {
  const Vcamppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 34, 70, 100),
              Color.fromARGB(255, 38, 83, 121),
              Color.fromARGB(255, 63, 120, 166)
            ]
          )
        ),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(10, (index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Campcard(index: index)
              );
            },),
        ),
      ),
    );
  }
}