import 'package:flutter/material.dart';
import 'package:hr_app/Utilities/appTheme.dart';
import 'package:hr_app/common_widgets/cardView.dart';
import 'leaveScreen.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) => LeaveScreen()),
                    );
                  },
                  child: cardView(
                    height: 111,
                    width: 111,
                    boarderRadius: 10,
                    iconPath: leaveImgPath,
                    title: leaveTitle,
                  ),
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
    );
  }
}
