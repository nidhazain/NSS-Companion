import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_nss/volunteer/vhome.dart';

class VRegister extends StatelessWidget {
   final fb=FirebaseFirestore.instance;
  final _usernameController = TextEditingController();
  final auth = FirebaseAuth.instance;
  final _passwordController = TextEditingController();
  final namectr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: size.height,
        padding: const EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color.fromARGB(255, 34, 70, 100),
          Color.fromARGB(255, 38, 83, 121),
          Color.fromARGB(255, 63, 120, 166)
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: const <Widget>[
                  Text(
                    "Volunteer",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Century Gothic"),
                  ),
                  Text(
                    "Create Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: "Century Gothic"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(223, 18, 59, 83),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey))),
                            child: TextField(
                              controller: namectr,
                              decoration:const InputDecoration(
                                  hintText: "name",
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Century Gothic"),
                                  border: InputBorder.none),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey))),
                            child:  TextFormField(
                              controller: _usernameController,
                              decoration:const InputDecoration(
                                  hintText: "username",
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Century Gothic"),
                                  border: InputBorder.none),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey))),
                            child:  TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration:const InputDecoration(
                                  hintText: "password",
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Century Gothic"),
                                  border: InputBorder.none),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey))),
                            child: const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "confirm password",
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Century Gothic"),
                                  border: InputBorder.none),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 50,
                            width: 500,
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 78, 127, 168)),
                            child: TextButton(
                              onPressed: () async {
                                //  checkLogin(context);
                                if (_usernameController.text.isNotEmpty &&
                                    _passwordController.text.isNotEmpty && namectr.text.isNotEmpty) {
                                  try {
                                    await auth.createUserWithEmailAndPassword(
                                        email: _usernameController.text,
                                        password: _passwordController.text);
                                    final user = auth.currentUser;
                                    if (user != null) {
                                       fb.collection("register_details").doc().set({
                                            'name':namectr.text,
                                            'username':_usernameController.text,
                                          });
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
                              },
                              child: const Text(
                                "Register",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Century Gothic"),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Already have an account? Login",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "Century Gothic"),
                                ),
                              )
                            ],
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
    ));
  }

  void checkLogin(BuildContext ctx) async {
    final auth = FirebaseAuth.instance;
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == _password) {
      if (_usernameController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {
        try {
          await auth.createUserWithEmailAndPassword(
              email: _usernameController.text,
              password: _passwordController.text);
          final user = auth.currentUser;
          if (user != null) {
            Navigator.of(ctx).pushReplacement(
              MaterialPageRoute(
                builder: (ctx1) => const vHomescreen(),
              ),
            );
          }
        } catch (e) {
          print(e.toString());
        }
      }
    } else {
      final _errorMessage = "username password doesn't match";
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
        content: Text(_errorMessage),
        margin: const EdgeInsets.all(10),
        behavior: SnackBarBehavior.floating,
        backgroundColor: const Color.fromARGB(255, 193, 81, 73),
        duration: const Duration(seconds: 5),
      ));
    }
  }
}
