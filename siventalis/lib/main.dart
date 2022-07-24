import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siventalis/route.dart';
import 'package:siventalis/screens/login/loginscreen.dart';
import 'package:siventalis/theme.dart';

void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "siventaris",
    theme: theme(),
    initialRoute: LoginScreen.routeName,
    routes: route,
  ));
}
