import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_nss/home2.dart';

import 'package:project_nss/po/gallery.dart';
import 'package:project_nss/volunteer/vprofile.dart';


import '../notification.dart';

class vmainScreen extends StatefulWidget {
  const vmainScreen({super.key});

  @override
  State<vmainScreen> createState() => _vmainScreenState();
}

class _vmainScreenState extends State<vmainScreen> {
  final page=[HomeScreen2(),AGallerypage(),Notificationpage(),VProfilePage()];
  int selected=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Container(
      color: Color.fromARGB(255, 34, 70, 100),
       child:  Padding(
         padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
         child: GNav(
          backgroundColor: Color.fromARGB(255, 34, 70, 100),
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor:Color.fromARGB(255, 63, 120, 166),
          gap: 5,
          onTabChange: (value){
            setState(() {
              selected=value;
            });
          },
          tabs:const [
            GButton(icon: Icons.home,
            text: 'home',
            ),
            GButton(icon: Icons.photo,
            text: 'gallery'
            ),
            GButton(icon: Icons.notifications,
            text: 'new'
            ),
            GButton(icon: Icons.person,
            text: 'profile'
            ),
          ] ),
       ),
     ),
     body: page[selected],
    );
  }
}