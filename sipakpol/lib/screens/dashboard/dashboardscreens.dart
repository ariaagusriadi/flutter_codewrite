import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sipakpol/components/dashboard/headerdrawer.dart';
import 'package:sipakpol/components/dashboard/headerdrawerlist.dart';

class DashboardScreen extends StatelessWidget {
  static String routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 12, 103, 177),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Welcome Whage Saputra, To',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Sistem Informasi Pengajuan Angka Kredit Internal Politap',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/2.png',
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [HeaderDrawer(), HeaderDrawerList()],
          ),
        ),
      ),
    );
  }
}
