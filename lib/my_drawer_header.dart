import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  // DocumentSnapshot myDoc;
  MyHeaderDrawer({
    Key? key,
  }) : super(key: key);
  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  

  
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection("register_details")
          .where("username", isEqualTo: FirebaseAuth.instance.currentUser!.email)
          .snapshots(),
      // .where({"status", "is", "Requested"}).snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) return Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return const Center(
              child: CircularProgressIndicator(
                value: 60,
                backgroundColor: Colors.black,
              ),
            );
          default:
            DocumentSnapshot document = snapshot.data!.docs[0];
            // String name = document['name'];
            return snapshot.data!.docs.isNotEmpty
                ? Container(
      color:Colors.white,
      width: double.infinity,
      height: 200,
      padding:const EdgeInsets.only(top: 20.0),
      child: Column(children: [
        const SizedBox(height: 20,),
        Stack(
          children: [
            Container(
              margin:const EdgeInsets.only(bottom: 10),
              height: 90,
              decoration:const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/a3.png'),
                ),
              ),
            ),
            // Positioned(
            //   bottom: 0,
            //   right: 0,
              
            //   child: CircleAvatar(
            //     radius: 20,
            //     child: IconButton(onPressed: (){}, icon: Icon(Icons.edit))),
            // )
          ],
        ),
        Text(
          document['name'],
          style:const TextStyle(
            color: Color.fromARGB(255, 34, 70, 100),
            fontSize: 20,
            fontFamily: "Century Gothic",
            fontWeight: FontWeight.bold,
          ),
        ),
       Text(
          document['username'],
          style:const TextStyle(
            color: Color.fromARGB(255, 70, 87, 100),
            fontSize: 20,
            fontFamily: "Century Gothic",
          ),
        ),
      ]),
    ):Center();
        }
      },
    );
   
  }
}
