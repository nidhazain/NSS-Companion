import 'package:flutter/material.dart';
import 'package:project_nss/po/attendance.dart';
class attendancescreen0 extends StatelessWidget {
  const attendancescreen0({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Container(
              width: double.infinity,
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
             ),
              padding: const EdgeInsets.all(20),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text("PROGRAM 1",style: TextStyle(color: Color.fromARGB(255, 30, 63, 91), fontFamily: "Century Gothic",fontSize: 30, fontWeight: FontWeight.bold,),),
                  ElevatedButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (ctx) => const AttendancePage() ,),);
                  }, child: const  Text("Attendance",style: TextStyle(color:  Colors.white, fontFamily: "Century Gothic",fontSize: 20, fontWeight: FontWeight.bold,),),)
                ],
                
              )
            ),
            const SizedBox(height: 10,),
            Container(
               width: double.infinity,
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
             ),
              padding: const EdgeInsets.all(20),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text("PROGRAM 2",style: TextStyle(color: Color.fromARGB(255, 30, 63, 91), fontFamily: "Century Gothic",fontSize: 30, fontWeight: FontWeight.bold,),),
                  ElevatedButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (ctx) =>const AttendancePage() ,),);
                  }, child: const  Text("Attendance",style: TextStyle(color:  Colors.white, fontFamily: "Century Gothic",fontSize: 20, fontWeight: FontWeight.bold,),),)
                ],
                
              )
            ),
            const SizedBox(height: 10,),
            Container(
               width: double.infinity,
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
             ),
              padding: const EdgeInsets.all(20),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const Text("PROGRAM 3",style: TextStyle(color: Color.fromARGB(255, 30, 63, 91), fontFamily: "Century Gothic",fontSize: 30, fontWeight: FontWeight.bold,),),
                  ElevatedButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (ctx) =>const AttendancePage() ,),);
                  }, child: const  Text("Attendance",style: TextStyle(color:  Colors.white, fontFamily: "Century Gothic",fontSize: 20, fontWeight: FontWeight.bold,),),)
                ],
                
              )
            ),
          ],
        ),
      ),
    );
  }
}