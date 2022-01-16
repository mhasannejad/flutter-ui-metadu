import 'dart:ui';

import 'package:emojis/emojis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:metadu_nftshop/components/ChipItem.dart';
import 'package:metadu_nftshop/components/ntf_item.dart';
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
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, color: Colors.black87.withOpacity(0.3))
                ],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/ezgif-2-95d8f7cb6b.png'))),
          ),
          InkWell(
            child: Container(
              child: Center(
                child: Text(
                  'Follow',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.7,
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 4,
                        blurRadius: 15,
                        color: Colors.black87.withOpacity(0.2))
                  ],
                  gradient: LinearGradient(colors: [
                    Color(0xffFD6E6A),
                    Color(0xffFFC600),
                  ]),
                  borderRadius: BorderRadius.circular(500)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 12.5),
            child: Text(
              'Mohammad',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 12.5,
              vertical: 15,
            ),
            child: Text(
              'Developer , Designer , Visionary , Gamer',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
            ),
          ),
          Container(
            height: 270,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                NFTItem(
                    name: 'mekaman',
                    image:
                        'assets/images/mekaverse-ethereum-nft-avatars-gID_4.png'),
                NFTItem(
                    name: 'mekaman',
                    image:
                        'assets/images/mekaverse-ethereum-nft-avatars-gID_4.png')
              ],
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 15),
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ChipItem(emoji: Emojis.monkeyFace, text: 'ArtWorks'),
                ChipItem(emoji: Emojis.heartExclamation, text: 'Fonts'),
                ChipItem(emoji: Emojis.framedPicture, text: 'Images'),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
