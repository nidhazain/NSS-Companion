import 'package:flutter/material.dart';
import 'package:project_nss/po/login.dart';

import 'college/clogin.dart';
import 'volunteer/vlogin.dart';
class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: kTextFieldDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 70,
            ),
            const Text(
              'NSS COMPANION',
              style: TextStyle(
                  color: Color.fromARGB(221, 46, 74, 115),
                  // color: Color(0xff388A75),
                  fontFamily: 'Century Gothic',
                  fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/9.jpg',
                  height: 320.0,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Container(
                                height: 50,
                                width: 500,
                                margin:const EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:const Color.fromARGB(255, 78, 127, 168)
                                ),
                               child: TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (ctx) =>loginscreen(),),);
                               }, child:const Text("Program Officer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Century Gothic"),),),
                              ),
                              const SizedBox(height: 15,),
                              Container(
                                height: 50,
                                width: 500,
                                margin:const EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:const Color.fromARGB(255, 78, 127, 168)
                                ),
                               child: TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (ctx) =>vloginscreen(),),);
                               }, child:const Text("Volunteer",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Century Gothic"),),),
                              ),
                              const SizedBox(height: 15,),
                              Container(
                                height: 50,
                                width: 500,
                                margin:const  EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:const Color.fromARGB(255, 78, 127, 168)
                                ),
                               child: TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (ctx) =>cloginscreen(),),);
                               }, child:const Text("College",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Century Gothic"),),),
                              ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}