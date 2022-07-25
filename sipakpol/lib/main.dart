import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sipakpol/route.dart';
import 'package:sipakpol/screens/login/loginscreens.dart';
import 'package:sipakpol/theme.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "sipakpol",
    theme: theme(),
    initialRoute: LoginScreen.routeName,
    routes: route,
  ));
}
