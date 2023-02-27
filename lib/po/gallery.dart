import 'package:flutter/material.dart';
class AGallerypage extends StatelessWidget {
  const AGallerypage ({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
     
      body: SingleChildScrollView(
        child: Container(
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text("GALLERY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Century Gothic",fontSize: 40),),
                const SizedBox(height: 20,),
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children: [
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
              ],
            ),
          ),
        ),
      ),
    );
  }

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
