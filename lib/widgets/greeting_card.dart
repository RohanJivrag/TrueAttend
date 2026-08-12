import 'package:flutter/material.dart';

class GreetingCard extends StatelessWidget {
  const GreetingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(24),

      decoration: BoxDecoration(
        color: Colors.blue,

        borderRadius: BorderRadius.circular(20),
      ),

      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Text(
            "Good Morning,",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18,
            ),
          ),

          SizedBox(height: 8),

          Text(
            "Rohan 👋",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 12),

          Text(
            "Wednesday, 5 August",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
