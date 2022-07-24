import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sipedi/Components/dashboard/HeaderDrawwer.dart';
import 'package:sipedi/Components/dashboard/headerdrawlist.dart';

class DashboardScreen extends StatelessWidget {
  static String routename = '/dashboard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 40, 75, 234),
      ),
      backgroundColor: Color.fromARGB(255, 40, 75, 234),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              'Sipedi',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Wrap(
                        spacing: 20.0,
                        runSpacing: 20.0,
                        children: [
                          SizedBox(
                            width: 400.0,
                            height: 150.0,
                            child: Card(
                              color: Colors.blue,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            child: Column(
                                          children: [
                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  '5',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 30),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Jumlah Buku',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ],
                                        )),
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          "assets/images/book.png",
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 400.0,
                            height: 150.0,
                            child: Card(
                              color: Colors.green,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            child: Column(
                                          children: [
                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  '7',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 30),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Jumlah Anggota',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ],
                                        )),
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          "assets/images/group.png",
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 400.0,
                            height: 150.0,
                            child: Card(
                              color: Colors.yellow,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            child: Column(
                                          children: [
                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  '7',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 30),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Jumlah Pengunjung',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ],
                                        )),
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          "assets/images/user.png",
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 400.0,
                            height: 150.0,
                            child: Card(
                              color: Colors.grey,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            child: Column(
                                          children: [
                                            Expanded(
                                              child: Center(
                                                child: Text(
                                                  '2',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 30),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                'Jumlah Pinjaman',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ],
                                        )),
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          "assets/images/diagram.png",
                                          height: 50,
                                          width: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [HeaderDrawer(), HeaderDrawList()],
            ),
          ),
        ),
      ),
    );
  }
}
