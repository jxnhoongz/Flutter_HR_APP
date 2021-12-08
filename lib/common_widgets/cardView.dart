import 'package:flutter/material.dart';
import 'package:hr_app/Utilities/appTheme.dart';

class cardView extends StatelessWidget {  

  cardView({
    required this.iconPath,
    required this.boarderRadius,
    required this.title,
    required this.width,
    required this.height,
  });

  final String iconPath;
  final String title;
  final double boarderRadius;
  final double width;
  final double height;
  //final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(boarderRadius),
        color: Colors.white,
        border: Border.all(
          width: 1,
          style: BorderStyle.solid,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconPath),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: Cardtextstyle,
          )
        ],
      ),
    );
  }
}
