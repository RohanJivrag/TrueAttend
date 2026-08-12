import 'package:flutter/material.dart';

class RecentSessionTile extends StatelessWidget {

  final String subject;
  final String date;
  final String students;

  const RecentSessionTile({
    super.key,
    required this.subject,
    required this.date,
    required this.students,
  });


  @override
  Widget build(BuildContext context) {

    return Container(

      margin: const EdgeInsets.only(bottom:12),

      padding: const EdgeInsets.all(16),


      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
            BorderRadius.circular(18),


        boxShadow: [

          BoxShadow(

            color: Colors.black.withOpacity(0.05),

            blurRadius:12,

            offset: const Offset(0,5),

          )

        ],

      ),


      child: Row(

        children: [

          Container(

            height:50,

            width:50,


            decoration: BoxDecoration(

              color: Colors.green.shade100,

              borderRadius:
                  BorderRadius.circular(15),

            ),


            child: const Icon(

              Icons.check_circle,

              color: Colors.green,

            ),

          ),



          const SizedBox(width:15),



          Expanded(

            child: Column(

              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [


                Text(

                  subject,

                  style: const TextStyle(

                    fontWeight: FontWeight.bold,

                    fontSize:17,

                  ),

                ),


                const SizedBox(height:5),


                Text(

                  date,

                  style: const TextStyle(

                    color: Colors.grey,

                  ),

                ),

              ],

            ),

          ),



          Text(

            students,

            style: const TextStyle(

              color: Color(0xff2563EB),

              fontWeight: FontWeight.w600,

            ),

          )

        ],

      ),

    );

  }
}