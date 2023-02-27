import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class complaint_card extends StatelessWidget {
  int index;
    DocumentSnapshot myDoc;
   complaint_card({
     Key? key,required this.index
    ,required this.myDoc
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
        children: [
           Text("Complaint ${index+1}",style:const TextStyle(color: Color.fromARGB(255, 30, 63, 91), fontFamily: "Century Gothic",fontSize: 20, fontWeight: FontWeight.bold,),),
          const SizedBox(height: 20,),
          Text(myDoc['complaint']),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            
          }, child: const  Text("View",style: TextStyle(color:  Colors.white, fontFamily: "Century Gothic",fontSize: 20, fontWeight: FontWeight.bold,),),)
        ],
        
      )
    );
  }
}
