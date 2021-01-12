import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:websafe_svg/websafe_svg.dart';

import './login_screen.dart';

class RegisterSuccessScreen extends StatelessWidget {
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
          // resizeToAvoidBottomPadding: false,
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Image.asset(
                      'assets/img/logo.png',
                      width: 350,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      'Thank you for Registering',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        letterSpacing: 0.5,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'A confirmation link has been sent to your email. Welcome!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        letterSpacing: 0.5,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 60,
                        alignment: Alignment.center,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Color(0xFF195587),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 16,
                              blurRadius: 16,
                              color: Color.fromARGB(20, 25, 85, 135),
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (ctx) => LoginScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
