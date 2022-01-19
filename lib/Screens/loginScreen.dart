import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hr_app/Screens/dashboard.dart';
import 'package:hr_app/Utilities/appTheme.dart';
import 'dart:convert';
import 'package:hr_app/Utilities/API.dart';
import 'package:hr_app/common_widgets/textFieldWidget.dart';
import 'package:hr_app/common_widgets/buttonWidget.dart';
import 'package:hr_app/common_widgets/waveWidget.dart';
import 'package:hr_app/ViewModels/loginModel.dart';
import 'package:provider/provider.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  bool rememberMe = false;
  bool isLoggedIn = false;
  login(email, password) async {
    Map data = {
      'empemail': email,
      'password': password,
    };

    var body = jsonEncode(data);

    //print(data.toString());

    final response = await http.post(Uri.parse(LOGIN), body: body);

    if (response.statusCode == 202) {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      if (rememberMe) {
        preferences.setString('email', _emailController.text);
      }

      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => dashboard()),
          (route) => false);

      //Fluttertoast.showToast(msg: responseBody.toString(), fontSize: 18);
    } else {
      Map<String, dynamic> responseBody = jsonDecode(response.body);

      Fluttertoast.showToast(msg: responseBody.toString(), fontSize: 18);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    final model = Provider.of<LoginModel>(context);

    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height - 200,
            color: mediumBlue,
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOutQuad,
            top: keyboardOpen ? -size.height / 4.2 : 0.0,
            child: WaveWidget(
              size: size,
              yOffset: size.height / 3.0,
              color: white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                    color: keyboardOpen ? mediumBlue : white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 350),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       Image.asset(
          //         'assets/icons/dp_logo.jpg',
          //       )
          //     ],
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextFieldWidget(
                  controller: _emailController,
                  hintText: 'Email',
                  obscureText: false,
                  prefixIconData: Icons.mail_outline,
                  suffixIconData: model.isValid ? Icons.check : null,
                  onChanged: (value) {
                    model.isValidEmail(value);
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextFieldWidget(
                      hintText: 'Password',
                      controller: _passwordController,
                      onChanged: (value) => print('onchanged'),
                      obscureText: model.isVisible ? false : true,
                      prefixIconData: Icons.lock_outline,
                      suffixIconData: model.isVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: rememberMe,
                              onChanged: (bool? value) {
                                setState(() {
                                  rememberMe = value!;
                                  //print('remember me is $rememberMe');
                                });
                              },
                              hoverColor: mediumBlue,
                              activeColor: mediumBlue,
                            ),
                            Text(
                              'Remember me',
                              style: TextStyle(
                                color: mediumBlue,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: mediumBlue,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                ButtonWidget(
                  title: 'Login',
                  hasBorder: false,
                  onTap: () {
                    login(_emailController.text, _passwordController.text);
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
