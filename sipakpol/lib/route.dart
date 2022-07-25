import 'package:flutter/cupertino.dart';
import 'package:sipakpol/screens/dashboard/dashboardscreens.dart';
import 'package:sipakpol/screens/login/loginscreens.dart';

final Map<String, WidgetBuilder> route = {
  LoginScreen.routeName: (context) => LoginScreen(),
  DashboardScreen.routeName: (context) => DashboardScreen()
};
