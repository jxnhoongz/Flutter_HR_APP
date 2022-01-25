import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:hr_app/Utilities/appTheme.dart';
import 'package:hr_app/common_widgets/dashboardItemsContainer.dart';

import 'package:hr_app/Utilities/global.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/icons/user.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                FutureBuilder(
                    future: getUsername(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          snapshot.data.toString(),
                          style: TextStyle(
                            fontSize: 25,
                            color: white,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      } else {
                        return Text(
                          'USERNAME',
                          style: TextStyle(
                            fontSize: 25,
                            color: white,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      }
                    }),
                SizedBox(
                  height: 3,
                ),
                FutureBuilder(
                  future: getRole(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(
                        snapshot.data.toString(),
                        style: TextStyle(
                          fontSize: 18,
                          color: white,
                        ),
                      );
                    } else {
                      return Text(
                        'title',
                        style: TextStyle(
                          fontSize: 18,
                          color: white,
                        ),
                      );
                    }
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                dbItemContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
