import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hr_app/Utilities/appTheme.dart';
import 'package:hr_app/ViewModels/loginModel.dart';

class TextFieldWidget extends StatelessWidget {
  //? makes them optional (can be null)
  final String? hintText;
  final IconData? prefixIconData;
  final IconData? suffixIconData;
  final bool obscureText; //used to hide text in password field(if true)
  final TextEditingController controller;
  final Function(String value) onChanged;

  TextFieldWidget({
    this.hintText,
    this.prefixIconData,
    this.suffixIconData,
    required this.obscureText,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<LoginModel>(context);
    var textField2 = TextField(
      onChanged: onChanged,
      controller: controller,
      obscureText: obscureText,
      cursorColor: mediumBlue,
      style: TextStyle(
        color: mediumBlue,
        fontSize: 14.0,
      ),
      decoration: InputDecoration(
        labelStyle: TextStyle(color: mediumBlue),
        focusColor: mediumBlue,
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: mediumBlue),
        ),
        labelText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 18,
          color: mediumBlue,
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            model.isVisible = !model.isVisible;
          },
          child: Icon(
            suffixIconData,
            size: 18,
            color: mediumBlue,
          ),
        ),
      ),
    );
    var textField = textField2;
    return textField;
  }
}
