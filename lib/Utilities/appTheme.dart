import 'package:flutter/material.dart';

final appBarcolor = Color(0xff0029FF);
final appBackgroundColor = Color(0xFF6CA8F1).withAlpha(255);
final purpleHaze = Color(0xFF9086FF);
final Color white = const Color(0xffffffff);
final Color mediumBlue = const Color(0xff4A64FE);

final Ktextstyle = TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins');

final Cardtextstyle = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    fontFamily: 'Poppins');

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final loginBtnStyle = ButtonStyle(
    elevation: MaterialStateProperty.all<double>(5.0),
    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
    padding:
        MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(15.0)),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ));

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFF6CA8F1),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

final String performanceImgPath = 'assets/icons/Workspace.png';
final String timeSheetImgPath = 'assets/icons/Datasheet.png';
final String recruitmentImgPath = 'assets/icons/Recruiting.png';
final String attendanceImgPath = 'assets/icons/Attendance.png';
final String learningImgPath = 'assets/icons/Learning.png';
final String salaryImgPath = 'assets/icons/Stackofmoney.png';
final String leaveImgPath = 'assets/icons/Leave.png';
final String travelImgPath = 'assets/icons/Traveler.png';

final String lockPath = 'assets/icons/lock.png';

final String performanceTitle = 'Performance';
final String timeSheetTitle = 'Time Sheet';
final String recruitmentTitle = 'Recruitment';
final String attendanceTitle = 'Attendance';
final String learningTitle = 'Learning';
final String salaryTitle = 'Salary';
final String leaveTitle = 'Leave';
final String travelTitle = 'Travel';
