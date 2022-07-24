import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:siventalis/screens/dashboard/dashboard.dart';
import 'package:siventalis/screens/login/loginscreen.dart';

class HeaderDrawerlist extends StatefulWidget {
  const HeaderDrawerlist({Key? key}) : super(key: key);

  @override
  State<HeaderDrawerlist> createState() => _HeaderDrawerlistState();
}

class _HeaderDrawerlistState extends State<HeaderDrawerlist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          Material(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, DashboardScreens.routeName);
              },
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.dashboard_customize_rounded,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Dashboard',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Material(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.lock_open_sharp,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Logout',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
