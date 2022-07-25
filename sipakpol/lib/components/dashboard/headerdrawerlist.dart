import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sipakpol/screens/dashboard/dashboardscreens.dart';
import 'package:sipakpol/screens/login/loginscreens.dart';

class HeaderDrawerList extends StatefulWidget {
  const HeaderDrawerList({Key? key}) : super(key: key);

  @override
  State<HeaderDrawerList> createState() => _HeaderDrawerListState();
}

class _HeaderDrawerListState extends State<HeaderDrawerList> {
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
                Navigator.pushNamed(context, DashboardScreen.routeName);
              },
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.dashboard,
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
                        Icons.lock_open_outlined,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Log Out',
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
