import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:siventalis/Utils/constants.dart';
import 'package:siventalis/screens/dashboard/dashboard.dart';
import 'package:siventalis/size_config.dart';

class LoginComponent extends StatefulWidget {
  @override
  _LoginComponent createState() => _LoginComponent();
}

class _LoginComponent extends State<LoginComponent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                      color: Color.fromARGB(255, 238, 100, 90),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Divider(
                  color: Color.fromARGB(255, 238, 100, 90),
                  thickness: 5,
                ),
                Image.asset('assets/images/1.png'),
                Divider(
                  color: Color.fromARGB(255, 238, 100, 90),
                  thickness: 5,
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none),
                    fillColor:
                        Color.fromARGB(255, 238, 100, 90).withOpacity(0.1),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 238, 100, 90),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none),
                    fillColor:
                        Color.fromARGB(255, 238, 100, 90).withOpacity(0.1),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 238, 100, 90),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, DashboardScreens.routeName);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(vertical: 16),
                    primary: Color.fromARGB(255, 238, 100, 90),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'forgot password?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 238, 100, 90),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
