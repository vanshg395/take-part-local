import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/constants.dart' as k;
import '../utils/http_exception.dart';

class Profile with ChangeNotifier {
  Map<String, dynamic> _profileData;

  bool get isLoaded => _profileData != null;
  Map<String, dynamic> get profileData => _profileData;

  Future<void> getProfile(String token) async {
    try {
      final url = k.baseUrl + '/api/auth/profile/';
      final response = await http.get(
        url,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: token,
        },
      );
      print('GET PROFILE >>>>> ' + response.statusCode.toString());
      print(response.body);
      _profileData = {};
    } catch (e) {
      throw e;
    }
  }

  Future<void> updateProfilePic(
    String token,
    String filePath,
  ) async {
    try {
      final url = k.baseUrl + '/api/auth/profile/update/';
      final request = http.MultipartRequest(
        'PATCH',
        Uri.parse(url),
      );
      request.headers.addAll({
        // HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.authorizationHeader: token,
      });
      final file = await http.MultipartFile.fromPath(
        'profile_pic',
        filePath,
      );
      request.files.add(file);
      final response = await request.send();
      print('UPDATE PROFILE PIC >>>>> ' + response.statusCode.toString());
      print(await response.stream.bytesToString());
    } catch (e) {
      throw e;
    }
  }
}
