import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import './edit_profile_screen.dart';
import '../providers/auth.dart';
import '../providers/profile.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _reqCount = 0;

  @override
  void initState() {
    super.initState();
    _getData(false);
  }

  Future<void> _getData(bool forceReload) async {
    if (!forceReload && Provider.of<Profile>(context, listen: false).isLoaded)
      return;
    setState(() {
      _reqCount++;
    });
    try {
      await Provider.of<Profile>(context, listen: false).getProfile(
        Provider.of<Auth>(context, listen: false).token,
      );
    } catch (e) {
      print(e);
    }
    setState(() {
      _reqCount--;
    });
  }

  Future<void> _updateImage() async {
    try {
      final pickedImage = await ImagePicker().getImage(
        source: ImageSource.gallery,
      );
      if (pickedImage == null) return;
      final croppedFile = await ImageCropper.cropImage(
        sourcePath: pickedImage.path,
        cropStyle: CropStyle.circle,
        androidUiSettings: AndroidUiSettings(
          toolbarTitle: 'Crop Image',
          toolbarColor: Color(0xFF195587),
          activeControlsWidgetColor: Color(0xFF195587),
          toolbarWidgetColor: Colors.white,
          lockAspectRatio: true,
        ),
        iosUiSettings: IOSUiSettings(
          minimumAspectRatio: 1.0,
        ),
        aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
        ],
      );
      if (croppedFile == null) return;
      setState(() {
        _reqCount++;
      });
      await Provider.of<Profile>(context, listen: false).updateProfilePic(
        Provider.of<Auth>(context, listen: false).token,
        croppedFile.path,
      );
    } catch (e) {
      print(e);
    }
    setState(() {
      _reqCount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: Platform.isIOS
              ? CupertinoNavigationBar(
                  middle: Text('Profile'),
                )
              : AppBar(
                  title: Text('Profile'),
                  centerTitle: true,
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
                  Center(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('assets/img/sample.jpg'),
                        ),
                        Positioned(
                          top: 3,
                          right: 3,
                          child: GestureDetector(
                            child: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Color(0xFF195587),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Icon(
                                Icons.edit,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                            onTap: _updateImage,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'fun82',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: 320,
                      child: Text(
                        'I’m a handy person who likes to help others. I have several projects of my own',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: GestureDetector(
                      child: Container(
                        width: 250,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF195587),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                            color: Color(0xFF195587),
                          ),
                        ),
                      ),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => EditProfileScreen(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(
                    indent: 40,
                    endIndent: 40,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'NAME',
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
                    child: Text(
                      'Sherryn Taylor',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'STREET ADDRESS',
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '1890 Greenbrier Ln. Suite 200',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Mooresville, NV 2501',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'PHONE',
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
                    child: Text(
                      '1-521-154-3720',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'EMAIL',
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
                    child: Text(
                      'katie@gwail.com',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'LOCATION',
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
                    child: Text(
                      'New York, NY',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF195587),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 16,
                                  offset: Offset(0, 10),
                                  color: Color(0xFF195587).withOpacity(0.2),
                                ),
                              ],
                              border: Border.all(
                                color: Color(0xFF195587),
                                width: 2,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'No Ads \$7.99',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF195587),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 16,
                                  offset: Offset(0, 10),
                                  color: Color(0xFF195587).withOpacity(0.2),
                                ),
                              ],
                              border: Border.all(
                                color: Color(0xFF195587),
                                width: 2,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'PRO \$21.99/MO',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
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
