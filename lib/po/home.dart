import 'package:flutter/material.dart';
import 'package:project_nss/po/attendance0.dart';
import 'package:project_nss/po/complaint2.dart';
import 'package:project_nss/po/feedback2.dart';
import 'package:project_nss/po/program0.dart';
import 'package:project_nss/po/screen__main.dart';
import 'camp.dart';
import 'package:project_nss/my_drawer_header.dart';
import 'programs.dart';
import 'volunteer.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  
  var currentPage=DrawerSection.home;
  @override
  Widget build(BuildContext context) {
    var container;
    if(currentPage==DrawerSection.home){
              container=const mainScreen();
            }else if(currentPage==DrawerSection.attendance){
              container= const attendancescreen0();
            }else if(currentPage==DrawerSection.volunteer){
              container= VolunteerPage();
            }else if(currentPage==DrawerSection.programs){
              container=const program0page();
            }else if(currentPage==DrawerSection.camp){
              container=const CampPage();
            }else if(currentPage==DrawerSection.view_complaint){
              container=const CComplaintpage();
            }else if(currentPage==DrawerSection.view_feedback){
              container=const CFeedbackpage();
            }

    return Scaffold(
      appBar: AppBar(
        backgroundColor:const  Color.fromARGB(255, 34, 70, 100),
        title:const Text('NSS Companion',style:TextStyle(color: Colors.white,fontSize: 20, fontFamily: "Century Gothic",),),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(children: [
            // MyHeaderDrawer(),
            MyDrawerList(),
          ])),
      ),
    );
  }

  Widget MyDrawerList(){
    return Container(
      padding:const EdgeInsets.only(top: 15,),
      child: Column(
        children: [
          const SizedBox(height: 70,),
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
          // const Divider(),
          //  menuItem(6,"Settings",Icons.settings_outlined,
          // currentPage==DrawerSection.settings ?true:false),
          //  menuItem(7,"Notifications",Icons.notifications_outlined,
          // currentPage==DrawerSection.notifications ?true:false),
          const Divider(),
           menuItem(6,"View Complaints",Icons.feed_outlined,
          currentPage==DrawerSection.view_complaint?true:false),
           menuItem(7,"View Feedback",Icons.feed_outlined,
          currentPage==DrawerSection.view_feedback ?true:false),
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
              currentPage=DrawerSection.view_complaint;
            }else if(id==7){
              currentPage=DrawerSection.view_feedback;
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
  view_complaint,
  view_feedback,
}