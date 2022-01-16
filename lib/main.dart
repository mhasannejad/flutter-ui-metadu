import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';
import 'package:icon/icon.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metadu_nftshop/components/ChipItem.dart';
import 'package:metadu_nftshop/components/ntf_item.dart';
import 'package:metadu_nftshop/components/text_input_field.dart';
import 'package:metadu_nftshop/components/user_item.dart';
import 'package:metadu_nftshop/hoc/Layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Gilroy',
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 100, bottom: 20),
                    child: AppTextField(
                      onChanged: (text) {},
                      textEditingController: controller,
                      hintText: 'Search',
                      icon: LineIcons.search,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: Text(
                      'Top Selling',
                      style: TextStyle(fontSize: 25, color: Colors.black87),
                    ),
                  ),
                  Container(
                    height: 55,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ChipItem(emoji: Emojis.monkeyFace, text: 'ArtWorks'),
                        ChipItem(emoji: Emojis.heartExclamation, text: 'Fonts'),
                        ChipItem(emoji: Emojis.framedPicture, text: 'Images'),
                      ],
                    ),
                  ),
                  Container(
                    height: 270,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        NFTItem(
                          name: 'MekaVerse',
                          image: 'assets/images/ezgif-2-374e97b74d.png',
                        ),
                        NFTItem(
                          name: 'MetaHorse',
                          image: 'assets/images/ezgif-2-3a52cad8de.png',
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width - 50,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Text(
                          'TopSellers',
                          style: TextStyle(fontSize: 25),
                        ),
                        Expanded(child: Container()),
                        Text(
                          'show more',
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [UserItem()],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
