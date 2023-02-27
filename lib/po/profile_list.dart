import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class profileList extends StatelessWidget {
  const profileList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        Container(
          height: 55,
          margin:const EdgeInsets.symmetric(
            horizontal: 10,
          ).copyWith(bottom: 20,
          ),
          padding:const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color:const Color.fromARGB(255, 145, 168, 188),
          ),
          child: ListTile(
            leading:const  Icon(
              Icons.key_outlined,
              size: 25,
              color: Color.fromARGB(255, 40, 66, 88),
              ),
              title:const  Text("Account",style: TextStyle(color: Color.fromARGB(255, 40, 66, 88),fontFamily: "Century Gothic"),) ,
              trailing: const Icon(Icons.navigate_next,
               color: Color.fromARGB(255, 40, 66, 88),
              ),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (ctx) => AGallerypage(),),);
              },
          ),
        ),
        Container(
          height: 55,
          margin:const EdgeInsets.symmetric(
            horizontal: 10,
          ).copyWith(bottom: 20,
          ),
          padding:const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color:const Color.fromARGB(255, 145, 168, 188),
          ),
          child: ListTile(
            leading:const  Icon(
              Icons.privacy_tip_outlined,
              size: 25,
              color: Color.fromARGB(255, 40, 66, 88),
              ),
              title:const     Text("Privacy",style: TextStyle(color: Color.fromARGB(255, 40, 66, 88),fontFamily: "Century Gothic"),) ,
              trailing: const Icon(Icons.navigate_next,
               color: Color.fromARGB(255, 40, 66, 88),
              ),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (ctx) => AGallerypage(),),);
              },
          ),
        ),
        Container(
          height: 55,
          margin:const EdgeInsets.symmetric(
            horizontal: 10,
          ).copyWith(bottom: 20,
          ),
          padding:const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color:const Color.fromARGB(255, 145, 168, 188),
          ),
          child: ListTile(
            leading:const  Icon(
              Icons.key_outlined,
              size: 25,
              color: Color.fromARGB(255, 40, 66, 88),
              ),
              title:const     Text("Change Password",style: TextStyle(color: Color.fromARGB(255, 40, 66, 88),fontFamily: "Century Gothic"),) ,
              trailing: const Icon(Icons.navigate_next,
               color: Color.fromARGB(255, 40, 66, 88),
              ),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (ctx) => AGallerypage(),),);
              },
          ),
        ),
        Container(
          height: 55,
          margin:const EdgeInsets.symmetric(
            horizontal: 10,
          ).copyWith(bottom: 20,
          ),
          padding:const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color:const Color.fromARGB(255, 145, 168, 188),
          ),
          child: ListTile(
            leading:const  Icon(
              Icons.help_outline,
              size: 25,
              color: Color.fromARGB(255, 40, 66, 88),
              ),
              title:const     Text("Help",style: TextStyle(color: Color.fromARGB(255, 40, 66, 88),fontFamily: "Century Gothic"),) ,
              trailing: const Icon(Icons.navigate_next,
               color: Color.fromARGB(255, 40, 66, 88),
              ),
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (ctx) => AGallerypage(),),);
              },
          ),
        ),
        Container(
          height: 55,
          margin:const EdgeInsets.symmetric(
            horizontal: 10,
          ).copyWith(bottom: 20,
          ),
          padding:const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color:const Color.fromARGB(255, 145, 168, 188),
          ),
          child: ListTile(
            leading:const  Icon(
              Icons.logout_outlined,
              size: 25,
              color: Color.fromARGB(255, 40, 66, 88),
              ),
              title: const    Text("Logout",style: TextStyle(color: Color.fromARGB(255, 40, 66, 88),fontFamily: "Century Gothic"),) ,
              trailing: const Icon(Icons.navigate_next,
               color: Color.fromARGB(255, 40, 66, 88),
              ),
              onTap: () {
                final auth=FirebaseAuth.instance;
                            try{
                              auth.signOut();
                              Navigator.pop(context);
                            }catch(e){
                              print(e.toString());
                            }
              },
          ),
        ),
      ],
    );
  }
}