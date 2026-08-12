import 'package:flutter/material.dart';

import '../../widgets/teacher_header.dart';
import '../../widgets/start_attendance_card.dart';
import '../../widgets/class_card.dart';
import '../../widgets/recent_session_tile.dart';


class TeacherHome extends StatelessWidget {
  const TeacherHome({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xffF8FAFC),

      body: SafeArea(

        child: SingleChildScrollView(

          padding: const EdgeInsets.all(20),

          child: Column(

            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [


              const TeacherHeader(
                name: "Professor Sharma",
              ),


              const SizedBox(height:25),


              const StartAttendanceCard(),


              const SizedBox(height:30),


              const Text(
                "Today's Classes",
                style: TextStyle(
                  fontSize:22,
                  fontWeight:FontWeight.bold,
                ),
              ),


              const SizedBox(height:15),


              const ClassCard(
                subject: "Database Management System",
                time: "09:00 AM",
                division: "B.Tech CSE A",
              ),


              const ClassCard(
                subject: "Computer Network",
                time: "11:00 AM",
                division: "B.Tech CSE A",
              ),


              const SizedBox(height:30),


              const Text(
                "Recent Sessions",
                style: TextStyle(
                  fontSize:22,
                  fontWeight:FontWeight.bold,
                ),
              ),


              const SizedBox(height:15),


              const RecentSessionTile(
                subject:"Java Programming",
                date:"Today",
                students:"62 Students",
              ),


              const RecentSessionTile(
                subject:"Artificial Intelligence",
                date:"Yesterday",
                students:"58 Students",
              ),


            ],
          ),
        ),
      ),
    );
  }
}