import 'package:flutter/material.dart';

class TimetableCard extends StatelessWidget {
  const TimetableCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 15,
            offset: const Offset(0, 5),
          )
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text(
                "Today's Timetable",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Icon(
                Icons.calendar_month,
                color: Color(0xff2563EB),
              )
            ],
          ),


          const SizedBox(height: 20),


          _lecture(
            "09:00 AM",
            "Database Management System",
            "Room 204",
          ),


          _lecture(
            "10:00 AM",
            "Computer Network",
            "Room 301",
          ),


          _lecture(
            "11:30 AM",
            "Java Programming",
            "Lab 2",
          ),

        ],
      ),
    );
  }


  Widget _lecture(
      String time,
      String subject,
      String room,
      ) {

    return Container(

      margin: const EdgeInsets.only(bottom: 12),

      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(
        color: const Color(0xffF8FAFC),
        borderRadius: BorderRadius.circular(16),
      ),


      child: Row(
        children: [

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),

            decoration: BoxDecoration(
              color: const Color(0xffDBEAFE),
              borderRadius: BorderRadius.circular(10),
            ),

            child: Text(
              time,
              style: const TextStyle(
                color: Color(0xff2563EB),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),


          const SizedBox(width: 15),


          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text(
                  subject,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  room,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
}