import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hr_app/Utilities/API.dart';
import 'package:http/http.dart' as http;
import 'package:hr_app/Utilities/appTheme.dart';
import 'package:hr_app/common_widgets/cardView.dart';
import 'package:hr_app/common_widgets/dashboardItems.dart';
import 'package:http/retry.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  getImage(modulename) async {
    String imgURL;
    Map data = {
      'modulename': modulename,
    };

    var body = jsonEncode(data);

    final response = await http.post(Uri.parse(ImageUrl), body: body);
    imgURL = jsonDecode(response.body).toString();
    return imgURL;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 230,
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
                Text(
                  'USERNAME',
                  style: TextStyle(
                    fontSize: 25,
                    color: white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'title',
                  style: TextStyle(
                    fontSize: 18,
                    color: white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    FutureBuilder(
                      future: getImage('Leave'),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return dbItem(
                            iconPath: snapshot.data.toString(),
                            title: 'Leave',
                            BgColor: Colors.cyan,
                          );
                        } else {
                          return Text('Loading');
                        }
                      },
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    FutureBuilder(
                        future: getImage('attendant'),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return dbItem(
                              iconPath: snapshot.data.toString(),
                              title: 'Attendance',
                              BgColor: Colors.blueAccent,
                            );
                          } else {
                            return Text('Loading');
                          }
                        }),
                    Spacer(
                      flex: 1,
                    ),
                    FutureBuilder(
                        future: getImage('Salary'),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return dbItem(
                              iconPath: snapshot.data.toString(),
                              title: 'Salary',
                              BgColor: Colors.amber,
                            );
                          } else {
                            return Text('Loading');
                          }
                        }),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    FutureBuilder(
                        future: getImage('Recruitement'),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return dbItem(
                              iconPath: snapshot.data.toString(),
                              title: 'Recruitment',
                              BgColor: Colors.lightGreen,
                            );
                          } else {
                            return Text('Loading');
                          }
                        }),
                    Spacer(
                      flex: 1,
                    ),
                    FutureBuilder(
                        future: getImage('Time Sheet'),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return dbItem(
                              iconPath: snapshot.data.toString(),
                              title: 'Time Sheet',
                              BgColor: Colors.pinkAccent,
                            );
                          } else {
                            return Text('Loading');
                          }
                        }),
                    Spacer(
                      flex: 1,
                    ),
                    FutureBuilder(
                        future: getImage('Performance'),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return dbItem(
                              iconPath: snapshot.data.toString(),
                              title: 'Performance',
                              BgColor: Colors.deepOrange,
                            );
                          } else {
                            return Text('Loading');
                          }
                        }),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    FutureBuilder(
                        future: getImage('Travel'),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return dbItem(
                              iconPath: snapshot.data.toString(),
                              title: 'Travel',
                              BgColor: Colors.indigo,
                            );
                          } else {
                            return Text('Loading');
                          }
                        }),
                    Spacer(
                      flex: 1,
                    ),
                    FutureBuilder(
                        future: getImage('Learning'),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return dbItem(
                              iconPath: snapshot.data.toString(),
                              title: 'Learning',
                              BgColor: Colors.green,
                            );
                          } else {
                            return Text('Loading');
                          }
                        }),
                    Spacer(
                      flex: 6,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
