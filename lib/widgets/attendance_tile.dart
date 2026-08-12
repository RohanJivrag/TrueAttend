import 'package:flutter/material.dart';

class AttendanceTile extends StatelessWidget {
  final String date;
  final String time;
  final bool present;

  const AttendanceTile({
    super.key,
    required this.date,
    required this.time,
    required this.present,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor:
            present ? Colors.green.shade100 : Colors.red.shade100,
        child: Icon(
          present ? Icons.check : Icons.close,
          color: present ? Colors.green : Colors.red,
        ),
      ),
      title: Text(date),
      subtitle: Text(time),
      trailing: Text(
        present ? "Present" : "Absent",
        style: TextStyle(
          color: present ? Colors.green : Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}