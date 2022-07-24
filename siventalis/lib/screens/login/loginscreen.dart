import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siventalis/components/login/logincompnet.dart';
import 'package:siventalis/size_config.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: LoginComponent(),
    );
  }
}
