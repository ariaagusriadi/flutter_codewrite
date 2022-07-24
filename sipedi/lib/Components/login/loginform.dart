import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sipedi/Components/custom_surfix_icon.dart';
import 'package:sipedi/Components/default_button_custome_color.dart';
import 'package:sipedi/Screens/dashboard/dashboard.dart';
import 'package:sipedi/Utils/constants.dart';
import 'package:sipedi/size_config.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginForm createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remeber = false;

  TextEditingController txtusername = TextEditingController(),
      txtPasword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildUsername(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildpassword(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Row(
            children: [
              Checkbox(
                  value: remeber,
                  onChanged: (value) {
                    setState(() {
                      remeber = value;
                    });
                  }),
              Text('Remember me'),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Lupa password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          DefaultButtonCustomeColor(
            color: kPrimaryColor,
            text: "LOGIN",
            press: () {
              Navigator.pushNamed(context, DashboardScreen.routename);
            },
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "Dont have acount?",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildUsername() {
    return TextFormField(
      controller: txtusername,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Masukan email anda",
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }

  TextFormField buildpassword() {
    return TextFormField(
      controller: txtPasword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Masukan password anda",
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }
}
