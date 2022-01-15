import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metadu_nftshop/hoc/Layout.dart';

class NFTPage extends StatefulWidget {
  const NFTPage({Key? key}) : super(key: key);

  @override
  _NFTPageState createState() => _NFTPageState();
}

class _NFTPageState extends State<NFTPage> {
  @override
  Widget build(BuildContext context) {
    return Layout(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 5,
                          blurRadius: 15,
                          color: Colors.black87.withOpacity(0.2))
                    ],
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/images/ezgif-2-374e97b74d.png'))),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 25),
                child: Row(
                  children: [
                    Text(
                      'MekaVerse',
                      style: TextStyle(
                          fontSize: 40,
                          color: Color(0xff404040),
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: Container()),
                    Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xff9899FF).withOpacity(0.5)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '15',
                                style: TextStyle(fontSize: 18),
                              ),
                              Icon(
                                LineIcons.ethereum,
                                color: Colors.black87.withOpacity(0.6),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra',
                    style: TextStyle(fontSize: 19),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                child: Row(
                  children: [
                    Text(
                      'Bids Placed',
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff404040),
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 2,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(500)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/alex.jpeg'))),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(500)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/alex.jpeg'))),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                child: Container(
                  child: Center(
                    child: Text('Place Your Bid',style: TextStyle(
                      fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold
                    ),),
                  ),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 4,
                            blurRadius: 15,
                            color: Colors.black87.withOpacity(0.2))
                      ],
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffFD6E6A),
                          Color(0xffFFC600),
                        ]
                      ),
                      borderRadius: BorderRadius.circular(500)),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
