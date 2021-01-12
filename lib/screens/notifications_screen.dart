import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/notification_card.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Platform.isIOS
          ? CupertinoNavigationBar(
              middle: Text('Notifications'),
            )
          : AppBar(
              title: Text('Notifications'),
              centerTitle: true,
            ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              NotificationCard(
                'Elit aliquip culpa qui ipsum ipsum irure.',
                'Do sint adipisicing amet ullamco excepteur incididunt magna laboris proident commodo occaecat duis labore culpa.',
              ),
              NotificationCard(
                'Elit aliquip culpa qui ipsum ipsum irure.',
                'Do sint adipisicing amet ullamco excepteur incididunt magna laboris proident commodo occaecat duis labore culpa.',
              ),
              NotificationCard(
                'Elit aliquip culpa qui ipsum ipsum irure.',
                'Do sint adipisicing amet ullamco excepteur incididunt magna laboris proident commodo occaecat duis labore culpa.',
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
