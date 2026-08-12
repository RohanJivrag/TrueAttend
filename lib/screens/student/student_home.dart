import 'package:flutter/material.dart';

import '../../widgets/student_header.dart';
import '../../widgets/attendance_summary_card.dart';
import '../../widgets/timetable_card.dart';


class StudentHome extends StatelessWidget {
  const StudentHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFC),

      body: SafeArea(
        child: SingleChildScrollView(

          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // Header
              const StudentHeader(
                name: "Rohan Jivrag",
              ),


              const SizedBox(height: 25),


              // Attendance Summary
              const AttendanceSummaryCard(),


              const SizedBox(height: 25),


              // Timetable
              const TimetableCard(),


              const SizedBox(height: 25),


              // Subjects Section
              const Text(
                "Subjects",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),


              const SizedBox(height: 15),


              Row(
                children: [

                  Expanded(
                    child: _subjectCard(
                      "DBMS",
                      "85%",
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: _subjectCard(
                      "Java",
                      "78%",
                    ),
                  ),

                ],
              ),


              const SizedBox(height: 15),


              Row(
                children: [

                  Expanded(
                    child: _subjectCard(
                      "AI",
                      "90%",
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: _subjectCard(
                      "CN",
                      "82%",
                    ),
                  ),

                ],
              ),


              const SizedBox(height: 30),


              const Text(
                "Recent Attendance",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),


              const SizedBox(height: 15),


              _attendanceTile(
                "DBMS",
                "Today",
                true,
              ),


              _attendanceTile(
                "Computer Network",
                "Yesterday",
                true,
              ),


              _attendanceTile(
                "Artificial Intelligence",
                "Monday",
                false,
              ),


            ],
          ),
        ),
      ),
    );
  }



  Widget _subjectCard(
      String subject,
      String percentage,
      ) {

    return Container(

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
            BorderRadius.circular(18),

      ),


      child: Column(

        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Text(
            subject,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            percentage,

            style: const TextStyle(
              color: Color(0xff2563EB),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Text(
            "Attendance",
            style: TextStyle(
              color: Colors.grey,
            ),
          )

        ],
      ),
    );
  }



  Widget _attendanceTile(
      String subject,
      String date,
      bool present,
      ){

    return Container(

      margin: const EdgeInsets.only(
        bottom: 12,
      ),

      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
            BorderRadius.circular(16),

      ),


      child: Row(

        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,

        children: [

          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              Text(
                subject,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                date,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),

            ],
          ),


          Icon(

            present
                ? Icons.check_circle
                : Icons.cancel,

            color: present
                ? Colors.green
                : Colors.red,

          )

        ],
      ),
    );
  }

}