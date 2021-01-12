import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  final ImageProvider image;
  final String name;
  final String comment;

  CommentCard(this.name, this.comment, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: image,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: '$name ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: comment,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
