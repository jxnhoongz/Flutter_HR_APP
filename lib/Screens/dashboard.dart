// import 'dart:html';

import 'package:flutter/material.dart';

import 'package:hr_app/Utilities/appTheme.dart';
import 'package:hr_app/common_widgets/cardView.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      backgroundColor: purpleHaze,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: appBarcolor,
              ),
              child: Text(
                'Username',
                style: Ktextstyle,
              ),
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () => print('settings clicked'),
            ),
            ListTile(
              title: Text('Help'),
              onTap: () => print('help clicked'),
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Top text
              Container(
                height: 155,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back',
                      style: Ktextstyle,
                    ),
                    Text(
                      'VATANA!',
                      style: Ktextstyle,
                    ),
                  ],
                ),
              ),

              //cards
              Container(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Row(
                  children: [
                    cardView(
                      height: 111,
                      width: 111,
                      boarderRadius: 10,
                      iconPath: performanceImgPath,
                      title: performanceTitle,
                    ),
                    SizedBox(
                      width: 64,
                    ),
                    cardView(
                      height: 111,
                      width: 111,
                      boarderRadius: 10,
                      iconPath: timeSheetImgPath,
                      title: timeSheetTitle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Row(
                  children: [
                    cardView(
                      height: 111,
                      width: 111,
                      boarderRadius: 10,
                      iconPath: recruitmentImgPath,
                      title: recruitmentTitle,
                    ),
                    SizedBox(
                      width: 64,
                    ),
                    cardView(
                      height: 111,
                      width: 111,
                      boarderRadius: 10,
                      iconPath: attendanceImgPath,
                      title: attendanceTitle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Row(
                  children: [
                    cardView(
                      height: 111,
                      width: 111,
                      boarderRadius: 10,
                      iconPath: learningImgPath,
                      title: learningTitle,
                    ),
                    SizedBox(
                      width: 64,
                    ),
                    cardView(
                      height: 111,
                      width: 111,
                      boarderRadius: 10,
                      iconPath: salaryImgPath,
                      title: salaryTitle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Row(
                  children: [
                    cardView(
                      height: 111,
                      width: 111,
                      boarderRadius: 10,
                      iconPath: leaveImgPath,
                      title: leaveTitle,
                    ),
                    SizedBox(
                      width: 64,
                    ),
                    cardView(
                      height: 111,
                      width: 111,
                      boarderRadius: 10,
                      iconPath: travelImgPath,
                      title: travelTitle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
