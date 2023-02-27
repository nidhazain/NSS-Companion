import 'package:flutter/material.dart';
class notification_card extends StatelessWidget {
  const notification_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20)
     ),
      padding: const EdgeInsets.all(20),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:const [
           Text("Notification",style: TextStyle(color: Color.fromARGB(255, 30, 63, 91), fontFamily: "Century Gothic",fontSize: 30, fontWeight: FontWeight.bold,),),
           Text('Description'),
           SizedBox(height: 10,),
        ],
        
      )
    );
  }
}