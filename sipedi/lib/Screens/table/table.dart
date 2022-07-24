import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sipedi/Components/dashboard/HeaderDrawwer.dart';
import 'package:sipedi/Components/dashboard/headerdrawlist.dart';

class TableScreen extends StatefulWidget {
  static String routename = '/table';

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  @override
  Widget build(BuildContext context) {
    bool? remember = false;
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
                child: Container(
                  child: SingleChildScrollView(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Card(
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: remember,
                                      onChanged: (value) {
                                        setState(() {
                                          remember = value;
                                        });
                                      },
                                    ),
                                    Text('besok ngoding')
                                  ],
                                ),
                              ),
                              Card(
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: remember,
                                      onChanged: (value) {
                                        setState(() {
                                          remember = value;
                                        });
                                      },
                                    ),
                                    Text('penambahan buku')
                                  ],
                                ),
                              ),
                              Card(
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: remember,
                                      onChanged: (value) {
                                        setState(() {
                                          remember = value;
                                        });
                                      },
                                    ),
                                    Text('pengembalian buku')
                                  ],
                                ),
                              ),
                              Card(
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: remember,
                                      onChanged: (value) {
                                        setState(() {
                                          remember = value;
                                        });
                                      },
                                    ),
                                    Text('bersihkan perpus')
                                  ],
                                ),
                              ),
                            ],
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 40, 75, 234),
        child: const Icon(Icons.add),
      ),
    );
  }
}
