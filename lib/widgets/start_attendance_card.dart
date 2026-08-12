import 'package:flutter/material.dart';

class StartAttendanceCard extends StatelessWidget {
  const StartAttendanceCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: const EdgeInsets.all(24),

      decoration: BoxDecoration(

        gradient: const LinearGradient(
          colors: [
            Color(0xff2563EB),
            Color(0xff60A5FA),
          ],

          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),


        borderRadius:
            BorderRadius.circular(26),


        boxShadow: [

          BoxShadow(

            color: Colors.blue.withOpacity(0.25),

            blurRadius:20,

            offset: const Offset(0,10),

          )

        ],

      ),



      child: Column(

        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [


          Container(

            height:60,

            width:60,


            decoration: BoxDecoration(

              color: Colors.white.withOpacity(0.2),

              borderRadius:
                  BorderRadius.circular(18),

            ),


            child: const Icon(

              Icons.face_retouching_natural,

              color: Colors.white,

              size:35,

            ),

          ),



          const SizedBox(height:20),



          const Text(

            "Start Attendance",

            style: TextStyle(

              color:Colors.white,

              fontSize:26,

              fontWeight:FontWeight.bold,

            ),

          ),



          const SizedBox(height:8),



          const Text(

            "AI Face Recognition\nBlink Detection • Liveness Check",

            style: TextStyle(

              color:Colors.white70,

              fontSize:15,

            ),

          ),



          const SizedBox(height:25),



          Align(

            alignment: Alignment.centerRight,

            child: Container(

              height:45,

              width:45,


              decoration: BoxDecoration(

                color:Colors.white,

                borderRadius:
                    BorderRadius.circular(14),

              ),


              child: const Icon(

                Icons.arrow_forward,

                color:Color(0xff2563EB),

              ),

            ),

          )

        ],

      ),

    );

  }
}