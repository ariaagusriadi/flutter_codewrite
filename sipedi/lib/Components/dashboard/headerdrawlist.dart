import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sipedi/Screens/dashboard/dashboard.dart';
import 'package:sipedi/Screens/login/LoginScren.dart';
import 'package:sipedi/Screens/table/table.dart';

class HeaderDrawList extends StatefulWidget {
  const HeaderDrawList({Key? key}) : super(key: key);

  @override
  State<HeaderDrawList> createState() => _HeaderDrawListState();
}

class _HeaderDrawListState extends State<HeaderDrawList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          MenuItemDashboard(),
          SizedBox(
            height: 10,
          ),
          MenuItemTable(),
          SizedBox(
            height: 10,
          ),
          MenuItemLogout(),
        ],
      ),
    );
  }

  Widget MenuItemDashboard() {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, DashboardScreen.routename);
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  Icons.dashboard_customize_outlined,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Text(
                    'Dashboard',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget MenuItemLogout() {
    return Material(
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
                  Icons.logout_outlined,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  "log out",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget MenuItemTable() {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, TableScreen.routename);
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  Icons.table_chart_rounded,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  "List Cattan",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
