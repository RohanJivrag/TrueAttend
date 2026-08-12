import 'package:flutter/material.dart';

class TeacherHeader extends StatelessWidget {

  final String name;

  const TeacherHeader({
    super.key,
    required this.name,
  });


  @override
  Widget build(BuildContext context) {

    return Row(

      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,

      children: [

        Column(

          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            const Text(
              "Good Morning 👋",
              style: TextStyle(
                color: Colors.grey,
                fontSize:16,
              ),
            ),


            const SizedBox(height:5),


            Text(
              name,

              style: const TextStyle(
                fontSize:26,
                fontWeight:FontWeight.bold,
              ),
            ),


            const SizedBox(height:5),


            const Text(
              "Computer Science Department",

              style: TextStyle(
                color:Colors.grey,
              ),
            ),

          ],
        ),



        Container(

          height:50,

          width:50,


          decoration: BoxDecoration(

            color: const Color(0xff2563EB),

            borderRadius:
                BorderRadius.circular(16),

          ),


          child: const Icon(

            Icons.notifications_none,

            color:Colors.white,

            size:28,

          ),

        )

      ],

    );
  }
}
