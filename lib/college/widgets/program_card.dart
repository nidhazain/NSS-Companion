import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProgramCard extends StatelessWidget {
 int index;
  DocumentSnapshot myDoc;
  ProgramCard({
    Key? key,required this.index
    ,required this.myDoc
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:const Color.fromARGB(255, 249, 249, 249),
      ),
      padding:const EdgeInsets.all(20),
      child: ExpansionTile(
        title: Text(myDoc['program name'],style:const TextStyle(color: Color.fromARGB(255, 37, 60, 111), fontFamily: "Century Gothic",fontSize: 30, fontWeight: FontWeight.bold,),),
        subtitle: Text(myDoc['description'],style:const TextStyle(color:Color.fromARGB(255, 37, 60, 111), fontFamily: "Century Gothic",fontSize:20,),),
        children: [
         Row(
           children: [

             ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.done), label:const Text("Approve"),
             style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 37, 156, 41)),
             ),
             ),
              const SizedBox(width: 10,),
        ElevatedButton.icon(onPressed: (){}, icon:const Icon(Icons.close), label:const Text("Decline"),
        style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 194, 78, 69)),
             ),
        ),
           ],
         ),
      ],
      ),
    );
  }
}