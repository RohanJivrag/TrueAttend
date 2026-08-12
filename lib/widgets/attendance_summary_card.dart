import 'package:flutter/material.dart';

class AttendanceSummaryCard extends StatelessWidget {
  const AttendanceSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xff2563EB),
            Color(0xff60A5FA),
          ],
        ),

        borderRadius: BorderRadius.circular(24),

        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.25),
            blurRadius: 20,
            offset: const Offset(0,8),
          )
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          const Text(
            "Attendance",
            style: TextStyle(
              color: Colors.white70,
              fontSize:18,
            ),
          ),

          const SizedBox(height:10),

          const Text(
            "82%",
            style: TextStyle(
              color: Colors.white,
              fontSize:42,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height:15),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              _item(
                "Present",
                "82",
              ),

              _item(
                "Absent",
                "12",
              ),

              _item(
                "Late",
                "06",
              ),

            ],
          )

        ],
      ),
    );
  }


  Widget _item(String title,String value)
  {
    return Column(
      children: [

        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize:20,
            fontWeight: FontWeight.bold,
          ),
        ),

        Text(
          title,
          style: const TextStyle(
            color: Colors.white70,
          ),
        )
      ],
    );
  }
}