import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ProjectSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset(
          'assets/svg/bg.svg',
          width: MediaQuery.of(context).size.width,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CupertinoNavigationBar(
            leading: Material(
              child: IconButton(
                icon: WebsafeSvg.asset('assets/svg/back.svg'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            middle: Text('Success'),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                WebsafeSvg.asset(
                  'assets/svg/success.svg',
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Thank you for submitting your project.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Upon approval, an activation link will be sent to your account’s email adress.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFF195587),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Dashboard',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  onTap: () => Navigator.of(context).pop(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
