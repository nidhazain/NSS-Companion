import 'package:flutter/material.dart';
import 'package:project_nss/volunteer/vprofile_list.dart';


import '../my_drawer_header.dart';
class VProfilePage extends StatelessWidget {
  const VProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Container(
          // padding:const EdgeInsets.symmetric(vertical: 30),
            height: size.height,
            width: double.infinity,
            decoration:const BoxDecoration(
              // gradient: LinearGradient(
              //   begin: Alignment.topCenter,
              //   colors: [
              //     Color.fromARGB(255, 34, 70, 100),
              //     Color.fromARGB(255, 38, 83, 121),
              //     Color.fromARGB(255, 63, 120, 166)
              //   ]
              // )
              color: Colors.white
            ),
             child: Column(children: [
            MyHeaderDrawer(), 
            VprofileList()         
          ])
        ),
      ),
      
    );
  }
}