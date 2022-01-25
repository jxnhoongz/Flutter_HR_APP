import 'package:shared_preferences/shared_preferences.dart';

getUsername() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var username = preferences.getString('username');
  //print(username);
  return username;
}

getRole() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var roles = preferences.getString('role');
  //print(roles);
  return roles;
}

getEmail() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var email = preferences.getString('email');
  return email;
}
