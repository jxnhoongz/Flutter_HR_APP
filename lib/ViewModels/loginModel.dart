import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hr_app/Utilities/API.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginModel extends ChangeNotifier {
  get isVisible => _isVisible;
  bool _isVisible = false;
  set isVisible(value) {
    _isVisible = value;
    notifyListeners();
  }

  get isValid => _isValid;
  bool _isValid = false;
  void isValidEmail(String input) async {
    Map data = {
      'empemail': input,
      'password': '123',
    };
    var body = jsonEncode(data);
    final response = await http.post(Uri.parse(LOGIN), body: body);

    //if response is 203 -> wrong password which means email is correct
    if (response.statusCode == 203 || response.statusCode == 202) {
      _isValid = true;
    } else {
      _isValid = false;
    }
    notifyListeners();
  }
}
