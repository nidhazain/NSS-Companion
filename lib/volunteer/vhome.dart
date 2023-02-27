import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_nss/home2.dart';
import 'package:project_nss/volunteer/vMain_screen.dart';

import 'package:project_nss/volunteer/vattendance.dart';
import 'package:project_nss/volunteer/vprogram.dart';

import 'package:project_nss/my_drawer_header.dart';


import '../po/screen__main.dart';
import 'complaint.dart';
import 'feedback.dart';
import '../notification.dart';

import '../settings.dart';
import 'vcamp.dart';
import '../po/volunteer.dart';


class vHomescreen extends StatefulWidget {
  const vHomescreen({super.key});

  @override
  State<vHomescreen> createState() => _vHomescreenState();
}

class _vHomescreenState extends State<vHomescreen> {
  var currentPage=DrawerSection.home;
  @override
  Widget build(BuildContext context) {
    var container;
    if(currentPage==DrawerSection.home){
              container=const vmainScreen();
            }else if(currentPage==DrawerSection.attendance){
              container=const  VAttendancepage();
            }else if(currentPage==DrawerSection.volunteer){
              container= VolunteerPage();
            }else if(currentPage==DrawerSection.programs){
              container=const VProgrampage();
            }else if(currentPage==DrawerSection.camp){
              container=const Vcamppage();
            }else if(currentPage==DrawerSection.settings){
              container=const SettingsPage();
            }else if(currentPage==DrawerSection.notifications){
              container=const Notificationpage();
            }else if(currentPage==DrawerSection.send_complaint){
              container=const ComplaintPage();
            }else if(currentPage==DrawerSection.send_feedback){
              container=const FeedbackPage();
            }

    return Scaffold(
    //    bottomNavigationBar:Container(
    //   color:const Color.fromARGB(255, 34, 70, 100),
    //    child: const Padding(
    //      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
    //      child: GNav(
    //       backgroundColor: Color.fromARGB(255, 34, 70, 100),
    //       color: Colors.white,
    //       activeColor: Colors.white,
    //       tabBackgroundColor:Color.fromARGB(255, 63, 120, 166),
    //       gap: 8,
    //       // onTabChange: (){},
    //       tabs:[
    //         GButton(icon: Icons.home,
    //         text: 'home',
    //         ),
    //         GButton(icon: Icons.photo,
    //         text: 'gallery'
    //         ),
    //         GButton(icon: Icons.notifications,
    //         text: 'new'
    //         ),
    //         GButton(icon: Icons.person,
    //         text: 'profile'
    //         ),
    //       ] ),
    //    ),
    //  ),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 34, 70, 100),
        title:const Text('NSS Companion',style:TextStyle(color: Colors.white,fontSize: 20, fontFamily: "Century Gothic",),),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              // MyHeaderDrawer(),
              MyDrawerList(),
            ]),
          )),
      ),
    );
  }

  Widget MyDrawerList(){
    return Container(
      padding:const EdgeInsets.only(top: 15,),
      child: Column(
        children: [
          menuItem(1,"Home",Icons.home_outlined,
          currentPage==DrawerSection.home ?true:false),
          menuItem(2,"Attendance",Icons.poll_outlined,
          currentPage==DrawerSection.attendance ?true:false),
           menuItem(3,"Volunteer Details",Icons.people_alt_outlined,
          currentPage==DrawerSection.volunteer?true:false),
           menuItem(4,"Programs",Icons.event,
          currentPage==DrawerSection.programs ?true:false),
           menuItem(5,"Camp",Icons.card_travel,
          currentPage==DrawerSection.camp ?true:false),
          const Divider(),
           menuItem(6,"Settings",Icons.settings_outlined,
          currentPage==DrawerSection.settings ?true:false),
           menuItem(7,"Notifications",Icons.notifications_outlined,
          currentPage==DrawerSection.notifications ?true:false),
          const Divider(),
           menuItem(8,"Send Complaints",Icons.feed_outlined,
          currentPage==DrawerSection.send_complaint?true:false),
           menuItem(9,"Send Feedback",Icons.feed_outlined,
          currentPage==DrawerSection.send_feedback ?true:false),
        ],
      ),
    );
  }

  Widget menuItem(int id,String title,IconData icon,boolselected){
    return Material(
      
      child: InkWell(
        onTap: (){
          Navigator.pop(context);
          setState(() {
            if(id==1){
              currentPage=DrawerSection.home;
            }else if(id==2){
              currentPage=DrawerSection.attendance;
            }else if(id==3){
              currentPage=DrawerSection.volunteer;
            }else if(id==4){
              currentPage=DrawerSection.programs;
            }else if(id==5){
              currentPage=DrawerSection.camp;
            }else if(id==6){
              currentPage=DrawerSection.settings;
            }else if(id==7){
              currentPage=DrawerSection.notifications;
            }else if(id==8){
              currentPage=DrawerSection.send_complaint;
            }else if(id==9){
              currentPage=DrawerSection.send_feedback;
            }
          });
        },
        child: Padding(padding:const EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(child:Icon(
             icon,
             size: 20,
             color: Colors.black,
            ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                title,
                style:const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  ),
                  ),
                  ),
          ],
        ),
        ),
      ),
    );
  }
}

enum DrawerSection{
  home,
  attendance,
  volunteer,
  programs,
  camp,
  settings,
  notifications,
  send_complaint,
  send_feedback,
}