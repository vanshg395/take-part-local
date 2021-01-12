import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String content;

  NotificationCard(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFFEDF6FD),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            content,
            style: TextStyle(
              fontSize: 12,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
