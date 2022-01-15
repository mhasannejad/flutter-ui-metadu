import 'package:emojis/emoji.dart';
import 'package:emojis/emojis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChipItem extends StatelessWidget {
  final String emoji;
  final String text;
  const ChipItem({Key? key,required this.emoji,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.5),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12.withOpacity(0.06),
                blurRadius: 5,
                spreadRadius: 1)
          ],
          borderRadius: BorderRadius.all(Radius.circular(50))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('$emoji $text',style: TextStyle(fontSize: 20),)],
      ),
      height: 35,
      margin: EdgeInsets.symmetric(vertical: 5 , horizontal: 12.5),
      width: MediaQuery.of(context).size.width / 2.5,
    );
  }
}
