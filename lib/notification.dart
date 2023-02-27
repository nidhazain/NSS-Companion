import 'package:flutter/material.dart';
import 'package:project_nss/widgets/notification_card.dart';
class Notificationpage extends StatelessWidget {
  
  const Notificationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
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
        child:ListView.separated(itemBuilder: (context, index) => notification_card(),itemCount: 20,separatorBuilder: (context, index) => SizedBox(height: 10,),)
      ),
    );
  }
}
