import 'package:flutter/material.dart';
class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

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
                trailing: ElevatedButton(onPressed: (){
                 
                }, child: const Text('present'),
                
                ) ,
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