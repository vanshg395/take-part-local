import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Platform.isIOS
          ? CupertinoNavigationBar(
              middle: Text('Messages'),
            )
          : AppBar(
              title: Text('Messages'),
              centerTitle: true,
            ),
      body: Center(
        child: Text('Coming Soon'),
      ),
    );
  }
}
