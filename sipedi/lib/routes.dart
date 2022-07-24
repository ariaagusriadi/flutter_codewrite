import 'package:flutter/cupertino.dart';
import 'package:sipedi/Screens/dashboard/dashboard.dart';
import 'package:sipedi/Screens/login/LoginScren.dart';
import 'package:sipedi/Screens/table/table.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  DashboardScreen.routename: (context) => DashboardScreen(),
  TableScreen.routename: (context) => TableScreen(),
};
