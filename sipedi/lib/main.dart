import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sipedi/Screens/login/LoginScren.dart';
import 'package:sipedi/routes.dart';
import 'package:sipedi/theme.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Sipedi",
    theme: theme(),
    initialRoute: LoginScreen.routeName,
    routes: routes,
  ));
}
