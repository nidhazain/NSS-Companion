import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      
      body:Container(
        padding:const EdgeInsets.symmetric(vertical: 30),
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
                  Padding(
                    padding:const EdgeInsets.all(20),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                         TextButton(
                          onPressed: () {
                            // final auth=FirebaseAuth.instance;
                            // try{
                            //   auth.signOut();
                            //   Navigator.pop(context);
                            // }catch(e){
                            //   print(e.toString());
                            // }
                          },
                          child: const Text("hello;" , style: TextStyle(color: Colors.white, fontSize: 60,fontFamily: "Century Gothic"),)),
                         const SizedBox(height: 20,),
                         const Text("Welcome To The NSS App" , style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: "Century Gothic"),),
                          const SizedBox(height: 20,),
                          Container(
                            height: 200,
                            width: 200,
                            padding:const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow:const [BoxShadow(
                                color: Color.fromARGB(223, 30, 56, 73),
                                blurRadius: 20,
                                offset: Offset(0,10)
                              )]
                            ),
                          child: Image.asset(
                  'assets/images/17.jpg',
                  height: 200.0,
                  fit: BoxFit.fill,
                ),
                        )
                      
                        ],
                      
                      ),
                      
                    ),
                  ),
                  
                ],
              ),
          )
      );
  }
}