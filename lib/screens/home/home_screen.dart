import 'package:flutter/material.dart';

import '../../widgets/greeting_header.dart';
import '../../widgets/student_profile_card.dart';
import '../../widgets/attendance_card.dart';
import '../../widgets/quick_action_card.dart';
import '../../widgets/section_title.dart';
import '../../widgets/attendance_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

              const GreetingHeader(
                userName: "Rohan",
              ),

              const SizedBox(height: 20),

              // Security Banner
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.verified_user,
                        color: Colors.green),

                    SizedBox(width: 12),

                    Expanded(
                      child: Text(
                        "AI Verification Enabled\nFace Match • Blink • Liveness",
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 20),

              const StudentProfileCard(
                name: "Rohan Jivrag",
                rollNo: "25CS101",
                course: "B.Tech CSE",
                isPresent: false,
              ),

              const SizedBox(height: 20),

              AttendanceCard(
                onTap: () {
                  // open camera
                },
              ),

              const SizedBox(height: 30),

              const SectionTitle(
                title: "Quick Actions",
              ),

              const SizedBox(height: 15),

              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.15,
                children: [

                  QuickActionCard(
                    icon: Icons.history,
                    title: "History",
                    onTap: () {},
                  ),

                  QuickActionCard(
                    icon: Icons.person,
                    title: "Profile",
                    onTap: () {},
                  ),

                  QuickActionCard(
                    icon: Icons.analytics_outlined,
                    title: "Reports",
                    onTap: () {},
                  ),

                  QuickActionCard(
                    icon: Icons.settings,
                    title: "Settings",
                    onTap: () {},
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const SectionTitle(
                title: "Recent Attendance",
              ),

              const SizedBox(height: 10),

              const AttendanceTile(
                date: "Today",
                time: "09:05 AM",
                present: true,
              ),

              const AttendanceTile(
                date: "Yesterday",
                time: "09:01 AM",
                present: true,
              ),

              const AttendanceTile(
                date: "Monday",
                time: "--",
                present: false,
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}