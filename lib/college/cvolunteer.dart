import 'package:flutter/material.dart';
class CvolunteerPage extends StatelessWidget {
  const CvolunteerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (ctx,index){
             return  ListTile(
              title: Text('Volunteer ${index+1}'),
              subtitle:const  Text('department '),
              leading:const CircleAvatar(
                radius:30,
                backgroundColor: Color.fromARGB(255, 38, 64, 101),
                backgroundImage: AssetImage('assets/images/a3.png'),
                ),
             );
          },
           separatorBuilder: (ctx,index){
            return const Divider();
           },
           itemCount: 20,
           ),
      ),
    );
  }
}