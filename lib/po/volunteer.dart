import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'home.dart';


class VolunteerPage extends StatefulWidget {
  @override
  State<VolunteerPage> createState() => _VolunteerPageState();
}

class _VolunteerPageState extends State<VolunteerPage> {
  int gender=-1;
  final namectr=TextEditingController();
  final dptctr=TextEditingController();
  final nbrctr=TextEditingController();
  final emlctr=TextEditingController();
  final adrsctr=TextEditingController();
  final dobctr=TextEditingController();
  final bgrpctr=TextEditingController();
  final gdrctr=TextEditingController();
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height:10,),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    
                    Expanded(
                      child: Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 10),
                        child: SingleChildScrollView(
                          child: Column(
                           children: <Widget>[
                             const SizedBox(height:10,),
                             Container(
                             
                               padding:const EdgeInsets.symmetric(horizontal: 10),
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
                                   child: TextField(
                                    controller: namectr,
                                     decoration:const InputDecoration(
                                       hintText: "name",
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
                                   child: TextField(
                                    controller: dptctr,
                                     decoration:const InputDecoration(
                                       hintText: "department",
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
                                   child: TextField(
                                    controller: nbrctr,
                                     decoration:const InputDecoration(
                                       hintText: "mobile number",
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
                                   child: TextField(
                                    controller: emlctr,
                                     decoration:const InputDecoration(
                                       hintText: "email",
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
                                   child: TextField(
                                    controller: adrsctr,
                                     decoration:const InputDecoration(
                                       hintText: "address",
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
                                   child: TextField(
                                    controller: dobctr,
                                     decoration:const InputDecoration(
                                       hintText: "DOB",
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
                                   child: TextField(
                                    controller: bgrpctr,
                                     decoration:const InputDecoration(
                                       hintText: "blood group",
                                       hintStyle: TextStyle(color: Colors.grey,fontFamily: "Century Gothic"),
                                       border: InputBorder.none
                                     ),
                                   ),
                                 ),
                                Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Radio(value: 0, groupValue:gender, onChanged:(value) {
                                     setState(() {
                                       gender=value!;
                                     });
                                   },),
                                   const Text('Male'),
                                   Radio(value: 1, groupValue: gender, onChanged:(value) {
                                     setState(() {
                                       gender=value!;
                                     });
                                   }, ),
                                   const Text('Female'),
                                   Radio(value: 2, groupValue: gender, onChanged: (value) {
                                     setState(() {
                                       gender=value!;
                                     });
                                   },),
                                   const Text('Other'),
                                 ],
                                ),
                                 // Container(
                                 //   padding: EdgeInsets.all(2),
                                 //   decoration: BoxDecoration(
                                 //     border: Border(bottom:BorderSide(color: Colors.grey))
                                 //   ),
                                 //   child: TextField(
                                 //     decoration: InputDecoration(
                                 //       hintText: "gender",
                                 //       hintStyle: TextStyle(color: Colors.grey,fontFamily: "Century Gothic"),
                                 //       border: InputBorder.none
                                 //     ),
                                 //   ),
                                 // ),
                                 // SizedBox(height:30,),
                                 Container(
                                   height: 50,
                                   margin:const EdgeInsets.symmetric(horizontal: 50),
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(50),
                                     color:const Color.fromARGB(255, 78, 127, 168)
                                   ),
                                   child: Center(
                                     child: TextButton(onPressed:(()async { 
                                       if(po!=null){
                                        if(namectr.text.isNotEmpty && dptctr.text.isNotEmpty && nbrctr.text.isNotEmpty && emlctr.text.isNotEmpty && adrsctr.text.isNotEmpty && dobctr.text.isNotEmpty && bgrpctr.text.isNotEmpty ){
                                          fb.collection("Volunteer_details").doc().set({
                                            'name':namectr.text,
                                            'department':dptctr.text,
                                            'mobile number':nbrctr.text,
                                            'email':emlctr.text,
                                            'address':adrsctr.text,
                                            'dob':dobctr.text,
                                            'bloodgrp':bgrpctr.text,
                                          });
                                        }
                                       }
                              
                                     }),child:const Text("submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Century Gothic"),)),
                                   ),
                                 ),
                                 const SizedBox(height:10,),
                                 
                                 Container(
                                   height: 50,
                                   margin:const EdgeInsets.symmetric(horizontal: 50),
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(50),
                                     color:const Color.fromARGB(255, 78, 127, 168)
                                   ),
                                   child: Center(
                                     child: TextButton(onPressed: (){
                                       Navigator.push(context, MaterialPageRoute(builder: (ctx) =>const Homescreen() ,),);
                                
                                     }, child:const Text("cancel",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Century Gothic"),),)
                                   ),
                                 ),
                                      const SizedBox(height:10,),      
                                 ],
                               ),
                             )
                           ],
                          ),
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

class Volunteer2page {
}
