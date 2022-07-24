import 'package:flutter/cupertino.dart';
import 'package:siventalis/screens/dashboard/dashboard.dart';
import 'package:siventalis/screens/login/loginscreen.dart';

final Map<String, WidgetBuilder> route = {
  LoginScreen.routeName: (context) => LoginScreen(),
  DashboardScreens.routeName: (context) => DashboardScreens(),
};
