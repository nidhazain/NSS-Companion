import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final pnamectr=TextEditingController();
  final dtectr=TextEditingController();
  final descctr=TextEditingController();
  final po=FirebaseAuth.instance.currentUser;
  final fb=FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      
      body:SingleChildScrollView(
        child: Container(
          padding:const EdgeInsets.symmetric(vertical: 30),
          height: size.height,
          width: double.infinity,
          decoration:const BoxDecoration(
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height:10,),
                    const Padding(
                      padding: EdgeInsets.all(20),
                    ),
                    
                    Padding(
                      padding:const EdgeInsets.all(10),
                      child: Column(
                       children: <Widget>[
                        const SizedBox(height:10,),
                         Container(
                           height: 450,
                           padding:const EdgeInsets.all(20),
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(10),
                             boxShadow:const [BoxShadow(
                               color: Color.fromARGB(223, 18, 59, 83),
                               blurRadius: 20,
                               offset: Offset(0,10)
                             )]
                           ),
                           child: Column(
                             children: <Widget>[
                               Container(
                               padding:const EdgeInsets.all(2),
                               decoration:const BoxDecoration(
                                 border: Border(bottom:BorderSide(color: Colors.grey))
                               ),
                               child:TextField(
                                controller: pnamectr,
                                 decoration:const InputDecoration(
                                   hintText: "program name",
                                   hintStyle: TextStyle(color: Colors.grey,fontFamily: "Century Gothic"),
                                   border: InputBorder.none
                                 ),
                               ),
                             ), 
                            
                             Container(
                               padding:const EdgeInsets.all(2),
                               decoration:const BoxDecoration(
                                 border: Border(bottom:BorderSide(color: Colors.grey))
                               ),
                               child:TextField(
                                controller: dtectr,
                                 decoration:const InputDecoration(
                                   hintText: "date",
                                   hintStyle: TextStyle(color: Colors.grey,fontFamily: "Century Gothic"),
                                   border: InputBorder.none
                                 ),
                               ),
                             ),
                             
                             Container(
                               padding:const EdgeInsets.all(2),
                               decoration:const BoxDecoration(
                                 border: Border(bottom:BorderSide(color: Colors.grey))
                               ),
                               child:TextField(
                                controller: descctr,
                                 decoration:const InputDecoration(
                                   hintText: "description",
                                   hintStyle: TextStyle(color: Colors.grey,fontFamily: "Century Gothic"),
                                   border: InputBorder.none
                                 ),
                               ),
                             ),
                             const SizedBox(height:30,),
                             Container(
                               height: 50,
                               margin:const  EdgeInsets.symmetric(horizontal: 50),
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(50),
                                 color:const  Color.fromARGB(255, 78, 127, 168)
                               ),
                               child: Center(
                                 child: TextButton(onPressed:(() async{
                                   if(po!=null){
                                        if(pnamectr.text.isNotEmpty && dtectr.text.isNotEmpty && descctr.text.isNotEmpty ){
                                          fb.collection("program_details").doc().set({
                                            'program name':pnamectr.text,
                                            
                                            'date':dtectr.text,
                                            
                                            'description':descctr.text,
                                          });
                                        }
                                       }
                                  
                                 }),child:const  Text("Post",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Century Gothic"),)),
                               ),
                             ),
                             const  SizedBox(height:10,),
                             Container(
                               height: 50,
                               margin:const  EdgeInsets.symmetric(horizontal: 50),
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(50),
                                 color:const  Color.fromARGB(255, 78, 127, 168)
                               ),
                               child:const  Center(
                                 child: Text("Reset",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Century Gothic"),),
                               ),
                             ),
                   
                             ],
                           ),
                         )
                       ],
                      ),
                    )
                  ],
                ),
            ),
      )
      );
  }
}