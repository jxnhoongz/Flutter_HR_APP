import 'package:flutter/material.dart';
import 'package:hr_app/Screens/leaveScreen.dart';
import 'package:hr_app/Utilities/appTheme.dart';

class dbItem extends StatelessWidget {
  dbItem({
    required this.iconPath,
    required this.title,
    this.BgColor,
  });

  final String iconPath;
  final String title;
  final Color? BgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case 'Leave':
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LeaveScreen()));
            break;
          case 'Travel':
            break;
          case 'Attendance':
            break;
          case 'Salary':
            break;
          case 'Time Sheet':
            break;
          case 'Performance':
            break;
          case 'Recruitement':
            break;
          case 'Learning':
            break;
          default:
            break;
        }
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        // decoration: BoxDecoration(
        //   border: Border.all(
        //     color: Colors.black,
        //     width: 1.0,
        //     style: BorderStyle.solid,
        //   ),
        // ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: BgColor,
              child: Image.network(
                iconPath,
                height: 40,
                width: 40,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
