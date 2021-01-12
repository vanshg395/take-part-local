import 'dart:io';

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:takepartlocal/widgets/dropdown_field.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

import './project_success_screen.dart';

class AddProjectScreen extends StatefulWidget {
  @override
  _AddProjectScreenState createState() => _AddProjectScreenState();
}

class _AddProjectScreenState extends State<AddProjectScreen> {
  String _visibleRadius;
  bool _displayOnlyCityStateZipOnMap = false;
  bool _allowPromotions = false;

  Future<void> _submitProject() async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => ProjectSuccessScreen(),
      ),
    );
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
              middle: Text('Add a Project'),
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
              title: Text('Add a Project'),
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
                  'TITLE',
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
                  'DESCRIPTION',
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
                  maxLines: 5,
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
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'PROJECT PICTURE',
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
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFD8D8D8),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.camera_alt,
                      size: 32,
                      color: Color(0xFF195587),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Take a Photo or Upload Existing',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
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
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'START DATE',
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
                          child: DateTimePicker(
                            type: DateTimePickerType.date,
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now().add(
                              Duration(days: 3650),
                            ),
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
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'END DATE',
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
                          child: DateTimePicker(
                            type: DateTimePickerType.date,
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now().add(
                              Duration(days: 3650),
                            ),
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
                  'SELECT CATEGORIES (UPTO 3)',
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
                child: MultiSelectDialogField(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFD8D8D8),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  buttonIcon: Icon(Icons.arrow_drop_down),
                  items: [
                    MultiSelectItem('Item 1', 'Item 1'),
                    MultiSelectItem('Item 2', 'Item 1'),
                    MultiSelectItem('Item 3', 'Item 1'),
                    MultiSelectItem('Item 4', 'Item 1'),
                    MultiSelectItem('Item 5', 'Item 1'),
                    MultiSelectItem('Item 6', 'Item 1'),
                    MultiSelectItem('Item 7', 'Item 1'),
                  ],
                  onConfirm: (value) {
                    print(value);
                  },
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'VISIBLE RADIUS',
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
                  value: _visibleRadius,
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
                      _visibleRadius = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Project Location',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    letterSpacing: 1,
                    color: Colors.black,
                  ),
                ),
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
              CheckboxListTile(
                title: Text('Display only city, state, zip on map'),
                value: _displayOnlyCityStateZipOnMap,
                onChanged: (value) {
                  setState(() {
                    _displayOnlyCityStateZipOnMap = value;
                  });
                },
              ),
              CheckboxListTile(
                title: Text(
                    'Okay for Pro service providers and category sponsors to contact me about my project'),
                value: _allowPromotions,
                onChanged: (value) {
                  setState(() {
                    _allowPromotions = value;
                  });
                },
              ),
              SizedBox(
                height: 24,
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
                    'Submit Project',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                onTap: _submitProject,
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
