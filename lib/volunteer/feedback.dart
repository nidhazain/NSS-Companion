import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
   final namectr=TextEditingController();
  final fbkctr=TextEditingController();
  final dtectr=TextEditingController();
  final st=FirebaseAuth.instance.currentUser;
  final fb=FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      
      body:
      SingleChildScrollView(
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
                    
                    Container(
                     child: Padding(
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
                                const SizedBox(height: 30,),
                                Container(
                                padding:const EdgeInsets.all(2),
                                decoration:const BoxDecoration(
                                  border: Border(bottom:BorderSide(color: Colors.grey))
                                ),
                                child:TextField(
                                  controller: namectr,
                                  decoration:const InputDecoration(
                                    hintText: "program/camp name",
                                    hintStyle: TextStyle(color: Colors.grey,fontFamily: "Century Gothic"),
                                    border: InputBorder.none
                                  ),
                                ),
                              ), 
                              Container(
                                padding: const EdgeInsets.all(2),
                                decoration:const BoxDecoration(
                                  border: Border(bottom:BorderSide(color: Colors.grey))
                                ),
                                child:TextField(
                                  controller: fbkctr,
                                  decoration:const InputDecoration(
                                    hintText: "feedback",
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
                               const SizedBox(height:60,),
                              Container(
                                height: 50,
                                margin:const EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:const Color.fromARGB(255, 78, 127, 168)
                                ),
                                child: Center(
                                  child: TextButton(onPressed:(() async{
                                   if(st!=null){
                                        if(namectr.text.isNotEmpty && fbkctr.text.isNotEmpty && dtectr.text.isNotEmpty ){
                                          fb.collection("feedback").doc().set({
                                            'program/camp name':namectr.text,
                                            'feedback':fbkctr.text,
                                            'date':dtectr.text,
                                            'email':FirebaseAuth.instance.currentUser!.email
                                          });
                                        }
                                       }
                                  }),child:const Text("Post",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Century Gothic"),)),
                                ),
                              ),
                              const SizedBox(height:20,),
                              Container(
                                height: 50,
                                margin:const EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:const Color.fromARGB(255, 78, 127, 168)
                                ),
                                child:const Center(
                                  child: Text("Reset",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Century Gothic"),),
                                ),
                              ),
                   
                              ],
                            ),
                          )
                        ],
                       ),
                     ), 
                    )
                  ],
                ),
            ),
      )
      );
  }
}