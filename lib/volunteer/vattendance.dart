import 'package:flutter/material.dart';
class VAttendancepage extends StatelessWidget {
  const VAttendancepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 31, 69, 100),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('ATTENDANCE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Century Gothic",fontSize: 30),),
            const SizedBox(height: 50,),
            Container(
              padding:const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              
              child: Container(
            
                width: 200,
                height: 200,
                child: Stack(
                  children: [
                    ShaderMask(
                      shaderCallback: (rect) {
                        return const SweepGradient(
                                startAngle: 0.0,
                                endAngle: 2*3.14,
                                stops: [0.7, 0.7],                         
                                center: Alignment.center,
                                colors: [Color.fromARGB(255, 37, 91, 135), Colors.transparent])
                            .createShader(rect);
                      },
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration:const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 160,
                        height: 160,
                        decoration:
                            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                        child:const Center(
                            child: Text(
                          "Strats",
                          style: TextStyle(color: Color.fromARGB(255, 23, 46, 76),fontWeight: FontWeight.bold,fontFamily: "Century Gothic",fontSize: 30,),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}