import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sipakpol/screens/dashboard/dashboardscreens.dart';
import 'package:sipakpol/size_config.dart';

class LoginComponet extends StatefulWidget {
  LoginComponet({Key? key}) : super(key: key);

  @override
  _LoginComponet createState() => _LoginComponet();
}

class _LoginComponet extends State<LoginComponet> {
  bool? remember = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenHeight(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.06,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.06,
                ),
                Image.asset('assets/1.png'),
                SizedBox(
                  height: 100,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "NIDN",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    fillColor:
                        Color.fromARGB(255, 12, 103, 177).withOpacity(0.1),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 12, 103, 177),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    fillColor:
                        Color.fromARGB(255, 12, 103, 177).withOpacity(0.1),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 12, 103, 177),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(
                          value: remember,
                          onChanged: (value) {
                            setState(() {
                              remember = value;
                            });
                          }),
                      Text(
                        'remeber me',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, DashboardScreen.routeName);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(vertical: 16),
                    primary: Color.fromARGB(255, 12, 103, 177),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
