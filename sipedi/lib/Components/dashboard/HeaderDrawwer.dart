import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderDrawer extends StatefulWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 40, 75, 234),
      width: double.infinity,
      height: 250,
      padding: EdgeInsets.only(top: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image:
                  DecorationImage(image: AssetImage('assets/images/desi.jpeg')),
            ),
          ),
          Text(
            'admin perpustakaan',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'perpustakaan@politap.ac.id',
            style: TextStyle(color: Colors.grey[200], fontSize: 14),
          )
        ],
      ),
    );
  }
}
