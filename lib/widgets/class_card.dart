import 'package:flutter/material.dart';

class ClassCard extends StatelessWidget {

  final String subject;
  final String time;
  final String division;

  const ClassCard({
    super.key,
    required this.subject,
    required this.time,
    required this.division,
  });


  @override
  Widget build(BuildContext context) {

    return Container(

      margin: const EdgeInsets.only(bottom:15),

      padding: const EdgeInsets.all(18),


      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
            BorderRadius.circular(20),


        boxShadow: [

          BoxShadow(

            color: Colors.black.withOpacity(0.05),

            blurRadius:15,

            offset: const Offset(0,5),

          )

        ],

      ),



      child: Row(

        children: [


          Container(

            height:55,

            width:55,


            decoration: BoxDecoration(

              color: const Color(0xffDBEAFE),

              borderRadius:
                  BorderRadius.circular(16),

            ),


            child: const Icon(

              Icons.menu_book,

              color:Color(0xff2563EB),

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

                    fontSize:17,

                    fontWeight:FontWeight.bold,

                  ),

                ),



                const SizedBox(height:5),



                Text(

                  division,

                  style: const TextStyle(

                    color:Colors.grey,

                  ),

                ),



              ],

            ),

          ),



          Column(

            crossAxisAlignment:
                CrossAxisAlignment.end,

            children: [


              const Icon(

                Icons.access_time,

                size:18,

                color:Color(0xff2563EB),

              ),


              const SizedBox(height:5),


              Text(

                time,

                style: const TextStyle(

                  fontWeight:FontWeight.w600,

                ),

              )

            ],

          )

        ],

      ),

    );

  }
}
