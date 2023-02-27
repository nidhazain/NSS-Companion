import 'package:flutter/material.dart';
class VGallerypage extends StatelessWidget {
  const VGallerypage ({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 34, 70, 100),
        title:const Text('NSS Companion',style:TextStyle(color: Colors.white,fontSize: 20, fontFamily: "Century Gothic",),),
      ),
      body: Container(
        height: size.height,
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
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: [
            const Text("GALLERY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Century Gothic",fontSize: 40),),
            const SizedBox(height: 1,),
            gallery_card(),
            gallery_card(),
            gallery_card(),
            gallery_card(),
            gallery_card(),
            gallery_card(),
            gallery_card(),
            gallery_card(),
            gallery_card(),
            gallery_card(),
            gallery_card(),
            gallery_card(),
            
          ],
          
        ),
      ),
    );
  }
  // Container(
  //             margin:const EdgeInsets.only(bottom: 10),
  //             height: 90,
  //             decoration:const BoxDecoration(
  //               shape: BoxShape.circle,
  //               IconButton: Icons.add,
  //             ),
  //           ),

  Container gallery_card() {
    return Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            
            child: Image.asset('assets/images/Group of friends celebrating birthday.jpg'),);
  }
}
