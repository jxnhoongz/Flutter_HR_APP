import 'package:flutter/material.dart';
import 'package:hr_app/common_widgets/dashboardItems.dart';
import 'package:http/http.dart' as http;
import 'package:hr_app/Utilities/API.dart';
import 'package:hr_app/Utilities/appTheme.dart';
import 'dart:convert';

class dbItemContainer extends StatefulWidget {
  const dbItemContainer({Key? key}) : super(key: key);

  //List<String> modules;

  @override
  _dbItemContainerState createState() => _dbItemContainerState();
}

class _dbItemContainerState extends State<dbItemContainer> {
  getImage(modulename) async {
    String imgURL;
    Map data = {
      'modulename': modulename,
    };

    var body = jsonEncode(data);

    final response = await http.post(Uri.parse(ImageUrl), body: body);
    if (response.statusCode == 202) {
      imgURL = jsonDecode(response.body).toString();
    } else {
      imgURL = 'http://10.0.2.2:8080/intern/image/warn.png';
    }
    return imgURL;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                future: getImage('+ Leave'),
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
                  future: getImage('+ attendant'),
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
                  future: getImage('+ Salary'),
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
                  future: getImage('+ Recruitement'),
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
                  future: getImage('+ Time Sheet'),
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
                  future: getImage('+ Performance'),
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
                  future: getImage('+ Travel'),
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
                  future: getImage('+ Learning'),
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
    );
  }
}
