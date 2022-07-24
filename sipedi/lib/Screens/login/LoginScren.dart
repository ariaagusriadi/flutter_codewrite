import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sipedi/Components/login/logincomponet.dart';
import 'package:sipedi/size_config.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: LoginComponent(),
    );
  }
}
