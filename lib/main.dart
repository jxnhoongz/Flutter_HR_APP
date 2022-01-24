import 'package:flutter/material.dart';
import 'package:hr_app/Screens/dashboard.dart';
import 'package:hr_app/ViewModels/loginModel.dart';

import 'Screens/loginScreen.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isLoggedin = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var email = preferences.getString('email');
  isLoggedin = email == null ? false : true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: isLoggedin ? dashboard() : LoginScreen(),
      ),
    );
  }
}
