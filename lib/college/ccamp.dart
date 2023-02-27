import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Ccamppage extends StatelessWidget {
  const Ccamppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection("camp_details")
          // .where("email", isEqualTo: FirebaseAuth.instance.currentUser!.email)
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
                ?  SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:const  Color.fromARGB(255, 249, 249, 249),
                ),
                padding:const EdgeInsets.all(20),
                child: ExpansionTile(
                  title: Text(document["cname"],style:const TextStyle(color: Color.fromARGB(255, 37, 60, 111), fontFamily: "Century Gothic",fontSize: 30, fontWeight: FontWeight.bold,),),
                  subtitle: Text(document["Description"],style:const TextStyle(color:Color.fromARGB(255, 37, 60, 111), fontFamily: "Century Gothic",fontSize:20,),),
                  children: [
                   Row(
                     children: [
                       ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.done), label:const Text("Approve"),
                       style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 37, 156, 41)),
                       ),
                       ),
                        const SizedBox(width: 10,),
                  ElevatedButton.icon(onPressed: (){}, icon:const Icon(Icons.close), label:const Text("Decline"),
                  style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 194, 78, 69)),
                       ),
                  ),
                     ],
                   ),
                ],
                ),
              ),
            
            ],
          ),
        ),
      )
                : Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'You are not posted any works yet.',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  );
        }
      },
    )
      
    );
  }
}