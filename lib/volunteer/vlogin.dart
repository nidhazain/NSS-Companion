import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_nss/po/login.dart';
import 'package:project_nss/volunteer/vregister.dart';

import '../college/clogin.dart';
import 'vhome.dart';


class vloginscreen extends StatelessWidget {
  final _usernameController = TextEditingController();
  final auth=FirebaseAuth.instance;
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      
      body:SingleChildScrollView(
        child: Container(
          height: size.height,
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
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height:40,),
                        Padding(
                          padding:const EdgeInsets.all(20),
                          child: Column(
                            children:const <Widget>[
                              Text("VOLUNTEER LOGIN" , style: TextStyle(color: Colors.white, fontSize: 30,fontFamily: "Century Gothic"),),
                              SizedBox(height: 10,),
                              Text("Welcome Back" , style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: "Century Gothic"),),
                            ],
                          ),
                        ),
                        Padding(
                          padding:const EdgeInsets.all(20),
                          child: Column(
                           children: <Widget>[
                             const SizedBox(height:10,),
                             Container(
                               padding:const EdgeInsets.all(20),
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10),
                                 boxShadow:const [BoxShadow(
                                   color: Color.fromARGB(223, 30, 56, 73),
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
                                   child: TextFormField(
                                     controller: _usernameController,
                                     decoration:const InputDecoration(
                                       label: Text('username'),
                                       hintStyle: TextStyle(color: Colors.grey,fontFamily: "Century Gothic"),
                                       border: InputBorder.none,
                                     ),
                                   ),
                                 ),
                                 Container(
                                   padding:const EdgeInsets.all(2),
                                   decoration:const BoxDecoration(
                                     border: Border(bottom:BorderSide(color: Colors.grey))
                                   ),
                                   child: TextFormField(
                                     controller: _passwordController,
                                     obscureText: true,
                                     decoration:const InputDecoration(
                                       label: Text('password'),
                                       hintStyle: TextStyle(color: Colors.grey,fontFamily: "Century Gothic"),
                                        border: InputBorder.none,
                                     ),
                                   ),
                                 ),
                                  const SizedBox(height: 30,),
                                 Container(
                                   height: 50,
                                   width: 500,
                                   margin:const EdgeInsets.symmetric(horizontal: 50),
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(50),
                                     color:const Color.fromARGB(255, 78, 127, 168)
                                   ),
                                  child: TextButton(onPressed: ()async{
                                   // checkLogin(context);
                                    if (_usernameController.text.isNotEmpty &&
                                     _passwordController.text.isNotEmpty) {
                                   try {
                                     await auth.signInWithEmailAndPassword(
                                         email: _usernameController.text,
                                         password: _passwordController.text);
                                     final user = auth.currentUser;
                                     if (user != null) {
                                       Navigator.of(context).pushReplacement(
                                         MaterialPageRoute(
                                           builder: (ctx1) =>
                                               const vHomescreen(),
                                         ),
                                       );
                                     }
                                   } catch (e) {
                                     print(e.toString());
                                   }
                                 }
                               
                                  }, child:const Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Century Gothic"),),),
                                 ),
                                 const SizedBox(height: 20,),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     TextButton(onPressed: (){
                                       Navigator.push(context, MaterialPageRoute(builder: (ctx) => VRegister(),),);
                               
                                     }, child:const Text("Don't have an account? SignUp",style: TextStyle(color: Colors.grey,fontFamily: "Century Gothic"),),)
                                   ],
                               
                                 ),
                                 const SizedBox(height: 20,),
                                
                                 const Text('login as',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontFamily: "Century Gothic"),),
                                 const SizedBox(height: 10,),
                                 Row(
                                   children: <Widget>[
                                     Expanded(
                                       child: Container(
                                         height: 40,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(50),
                                           color:const Color.fromARGB(255, 24, 50, 68)
                                         ),
                                         child: Center(
                                           child: TextButton(onPressed: (){
                                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => loginscreen() ,),);
                                           }, child:const Text("Admin",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontFamily: "Century Gothic"),),)
                                         ),
                                       ),
                                     ),
                                     const SizedBox(width: 30,),
                                     Expanded(
                                       child: Container(
                                         height: 40,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(50),
                                           color:const Color.fromARGB(255, 24, 50, 68)
                                         ),
                                         child: Center(
                                           child: TextButton(onPressed: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (ctx) => cloginscreen(),),);
                                           }, child:const Text("College",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Century Gothic"),),)
                                         ),
                                       ),
                                     ),
                                   ],
                                 )
                                 ],
                               ),
                             )
                           ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            ),
      )
      );
  }
 void checkLogin(BuildContext ctx)async{
  final auth=FirebaseAuth.instance;
  final _username = _usernameController.text;
  final _password = _passwordController.text;
  if(_username==_password)
  {
    if(_usernameController.text.isNotEmpty && _passwordController.text.isNotEmpty){
      // await 
    }
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx1) => vHomescreen(),),);

  }else{
    final _errorMessage = "username password doesn't match";
    ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
      content: Text(_errorMessage),
      margin: EdgeInsets.all(10),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Color.fromARGB(255, 193, 81, 73),
      duration: Duration(seconds: 5),
      ));
  }
 }
}
