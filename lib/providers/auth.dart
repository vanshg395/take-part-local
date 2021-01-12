import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/constants.dart' as k;
import '../utils/http_exception.dart';

class Auth with ChangeNotifier {
  String _token;
  String _username;
  String _fname;
  String _lname;

  bool get isAuth => token != null;
  String get token => _token;
  String get username => _username;
  String get fname => _fname;
  String get lname => _lname;

  Future<void> login(
    String username,
    String password,
  ) async {
    try {
      final url = k.baseUrl + '/api/auth/login/';
      final response = await http.post(
        url,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
        body: json.encode({
          'username': username,
          'password': password,
        }),
      );
      print('LOGIN >>>>> ' + response.statusCode.toString());
      if (response.statusCode == 201) {
        final resBody = json.decode(response.body)['user'];
        _username = resBody['username'];
        _token = 'Token ' + resBody['token'];
        _fname = resBody['first_name'];
        _lname = resBody['last_name'];
        final _prefs = await SharedPreferences.getInstance();
        await _prefs.setString(
          'userData',
          json.encode({
            'token': _token,
            'username': _username,
            'fname': _fname,
            'lname': _lname,
          }),
        );
      } else if (response.statusCode == 401) {
        throw HttpException(
            'This combination of email and password is invalid. Please try again.');
      } else if (response.statusCode >= 500) {
        throw HttpException('Internal Server Error, Please try again later.');
      } else {
        throw HttpException('Something Went Wrong, Please try again later.');
      }
    } catch (e) {
      throw e;
    }
  }

  Future<void> register(
    String username,
    String password,
    String fname,
    String lname,
  ) async {
    try {
      final url = k.baseUrl + '/api/auth/register/';
      final response = await http.post(
        url,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
        body: json.encode({
          'username': username,
          'password': password,
          'first_name': fname,
          'last_name': lname,
        }),
      );
      print('REGISTER >>>>> ' + response.statusCode.toString());
      if (response.statusCode == 200) {
      } else if (response.statusCode == 400) {
        throw HttpException(
            'The entered email address is already in use. Please use another email.');
      } else if (response.statusCode >= 500) {
        throw HttpException('Internal Server Error, Please try again later.');
      } else {
        throw HttpException('Something Went Wrong, Please try again later.');
      }
    } catch (e) {
      throw e;
    }
  }

  Future<bool> tryAutoLogin() async {
    final _prefs = await SharedPreferences.getInstance();
    if (!_prefs.containsKey('userData')) return false;
    final _extractedUserData = json.decode(_prefs.getString('userData'));
    _token = _extractedUserData['token'];
    _username = _extractedUserData['username'];
    _fname = _extractedUserData['fname'];
    _lname = _extractedUserData['lname'];
    return true;
  }

  Future<void> logout() async {
    final _prefs = await SharedPreferences.getInstance();
    await _prefs.clear();
    _token = null;
    _username = null;
    _fname = null;
    _lname = null;
  }
}
