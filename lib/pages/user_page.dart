import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metadu_nftshop/hoc/Layout.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Layout(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          new ClipRect(
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: new Container(
                width: 450.0,
                height: 200.0,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey.shade200.withOpacity(0.5)),
                child: Center(
                    child: Text(
                  "Censored",
                  style: TextStyle(fontSize: 30),
                )),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
