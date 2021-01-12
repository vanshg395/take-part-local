import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../widgets/dropdown_field.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String _defaultSearchCategory;
  String _defaultSearchRadius;
  bool _emailNotifications = false;
  bool _textNotifications = false;
  bool _newNotifications = false;

  Future<void> _updateProfile() async {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Platform.isIOS
          ? CupertinoNavigationBar(
              leading: Material(
                color: Colors.transparent,
                child: IconButton(
                  icon: WebsafeSvg.asset(
                    'assets/svg/back.svg',
                    color: Colors.black,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              middle: Text('Edit Profile'),
            )
          : AppBar(
              leading: Material(
                color: Colors.transparent,
                child: IconButton(
                  icon: WebsafeSvg.asset(
                    'assets/svg/back.svg',
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              title: Text('Edit Profile'),
            ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'SCREEN NAME',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    letterSpacing: 1,
                    color: Color(0xFFB2C2DB),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
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
                    helperText:
                        'Max 8 characters, Letters & Numbers only, No spaces',
                  ),
                  maxLength: 8,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'SHORT DESCRIPTION OF YOURSELF',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    letterSpacing: 1,
                    color: Color(0xFFB2C2DB),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
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
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'ANY SPECIAL SKILLS?',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    letterSpacing: 1,
                    color: Color(0xFFB2C2DB),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
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
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(16, 0, 8, 0),
                          child: Text(
                            'FIRST NAME',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              letterSpacing: 1,
                              color: Color(0xFFB2C2DB),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(16, 0, 8, 0),
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
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(8, 0, 16, 0),
                          child: Text(
                            'LAST NAME',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              letterSpacing: 1,
                              color: Color(0xFFB2C2DB),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(8, 0, 16, 0),
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
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'STREET ADDRESS (LINE 1)',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    letterSpacing: 1,
                    color: Color(0xFFB2C2DB),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
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
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'STREET ADDRESS (LINE 2)',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    letterSpacing: 1,
                    color: Color(0xFFB2C2DB),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
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
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'CITY',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              letterSpacing: 1,
                              color: Color(0xFFB2C2DB),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(16, 0, 8, 0),
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
                              counter: SizedBox(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'STATE',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              letterSpacing: 1,
                              color: Color(0xFFB2C2DB),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
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
                              counter: SizedBox(),
                            ),
                            maxLength: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'ZIP CODE',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              letterSpacing: 1,
                              color: Color(0xFFB2C2DB),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(8, 0, 16, 0),
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
                              counter: SizedBox(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'EMAIL ADDRESS',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    letterSpacing: 1,
                    color: Color(0xFFB2C2DB),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
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
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'CONTACT PHONE NUMBER',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    letterSpacing: 1,
                    color: Color(0xFFB2C2DB),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
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
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'DEFAULT SEARCH CATEGORY',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    letterSpacing: 1,
                    color: Color(0xFFB2C2DB),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: MultilineDropdownButtonFormField(
                  iconSize: 24,
                  items: [
                    DropdownMenuItem(
                      child: Text('Item 1'),
                      value: 'Item 1',
                    ),
                    DropdownMenuItem(
                      child: Text('Item 2'),
                      value: 'Item 2',
                    ),
                  ],
                  value: _defaultSearchCategory,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
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
                  ),
                  onChanged: (value) {
                    setState(() {
                      _defaultSearchCategory = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'DEFAULT SEARCH RADIUS',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    letterSpacing: 1,
                    color: Color(0xFFB2C2DB),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: MultilineDropdownButtonFormField(
                  iconSize: 24,
                  items: [
                    DropdownMenuItem(
                      child: Text('Item 1'),
                      value: 'Item 1',
                    ),
                    DropdownMenuItem(
                      child: Text('Item 2'),
                      value: 'Item 2',
                    ),
                  ],
                  value: _defaultSearchRadius,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
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
                  ),
                  onChanged: (value) {
                    setState(() {
                      _defaultSearchRadius = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'NOTIFICATIONS',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    letterSpacing: 1,
                    color: Color(0xFFB2C2DB),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
                          value: _emailNotifications,
                          onChanged: (value) {
                            setState(() {
                              _emailNotifications = value;
                            });
                          },
                        ),
                        Text('Email')
                      ],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Checkbox(
                          value: _textNotifications,
                          onChanged: (value) {
                            setState(() {
                              _textNotifications = value;
                            });
                          },
                        ),
                        Text('Text')
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    value: _newNotifications,
                    onChanged: (value) {
                      setState(() {
                        _newNotifications = value;
                      });
                    },
                  ),
                  Text('Notify of new projects or event in default categories'),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              GestureDetector(
                child: Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Color(0xFF195587),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                onTap: _updateProfile,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
