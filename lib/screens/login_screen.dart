import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:provider/provider.dart';
import 'package:cool_alert/cool_alert.dart';

import './register_screen.dart';
import './tabs_screen.dart';
import '../providers/auth.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey();
  Map<String, dynamic> _data = {};
  int _reqCount = 0;

  Future<void> _login() async {
    FocusScope.of(context).unfocus();
    if (!_formKey.currentState.validate()) return;
    _formKey.currentState.save();
    setState(() {
      _reqCount++;
    });
    try {
      await Provider.of<Auth>(context, listen: false).login(
        _data['username'],
        _data['password'],
      );
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => TabsScreen(),
        ),
      );
    } catch (e) {
      print(e);
      CoolAlert.show(
        context: context,
        type: CoolAlertType.error,
        text: e.toString(),
      );
      if (e.toString() ==
          'This combination of email and password is invalid. Please try again.') {
        _formKey.currentState.reset();
      }
    }
    setState(() {
      _reqCount--;
      print(_reqCount);
    });
  }

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
          body: SafeArea(
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Form(
                  key: _formKey,
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
                        height: 50,
                      ),
                      Text(
                        'Sign in to continue',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          letterSpacing: 0.5,
                          color: Color(0xFF999999),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD8D8D8),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD8D8D8),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD8D8D8),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD8D8D8),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD8D8D8),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD8D8D8),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: WebsafeSvg.asset(
                                'assets/svg/email.svg',
                              ),
                            ),
                            hintText: 'Email',
                          ),
                          validator: (value) {
                            if (value == '') {
                              return 'This field is required';
                            }
                            if (!RegExp(
                                    r'^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$')
                                .hasMatch(value)) {
                              return 'Please enter a valid email.';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _data['username'] = value;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD8D8D8),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD8D8D8),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD8D8D8),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD8D8D8),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD8D8D8),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD8D8D8),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: WebsafeSvg.asset(
                                'assets/svg/password.svg',
                              ),
                            ),
                            hintText: 'Password',
                          ),
                          validator: (value) {
                            if (value == '') {
                              return 'This field is required';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _data['password'] = value;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30,
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
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        onTap: _login,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 150,
                            height: 1,
                            color: Color(0xFFD8D8D8),
                          ),
                          Text(
                            'OR',
                            style: TextStyle(
                              color: Color(0xFFB8B8B8),
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1,
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 1,
                            color: Color(0xFFD8D8D8),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xFF195587),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Color(0xFFB8B8B8),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                          ),
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account? ',
                            ),
                            TextSpan(
                              text: 'Register',
                              style: TextStyle(
                                color: Color(0xFF195587),
                                fontWeight: FontWeight.w700,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (ctx) => RegisterScreen(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
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
        ),
        if (_reqCount > 0) ...[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.black.withOpacity(0.6),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(20),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                  Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
