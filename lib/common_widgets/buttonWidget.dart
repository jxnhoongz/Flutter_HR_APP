import 'package:flutter/material.dart';
import 'package:hr_app/Utilities/appTheme.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final bool hasBorder;
  final GestureTapCallback onTap;

  ButtonWidget({
    required this.title,
    required this.hasBorder,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: hasBorder ? white : mediumBlue,
          borderRadius: BorderRadius.circular(10),
          border: hasBorder
              ? Border.all(
                  color: mediumBlue,
                  width: 1.0,
                )
              : Border.fromBorderSide(BorderSide.none),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 60.0,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: hasBorder ? mediumBlue : white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
