



import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage('assets/profile_cat.png'), // Profile image
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Guy Hawkins', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Icon(Icons.message, color: Colors.red),
                    Text('54'),
                    SizedBox(width: 8),
                    Icon(Icons.calendar_today, color: Colors.red),
                    Text('1'),
                    SizedBox(width: 8),
                    Icon(Icons.error_outline, color: Colors.red),
                  ],
                )
              ],
            ),
          ),
          Icon(Icons.settings, color: Colors.red),
        ],
      ),
    );
  }
}
