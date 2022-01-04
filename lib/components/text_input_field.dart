import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final TextEditingController textEditingController;
  final Color cursorColor;
  final Color iconColor;
  final Color editTextBackgroundColor;
  final int minLines;

  final int maxLines;
  final double width;
  final bool enabled;
  final TextInputType keyboardType;
  final TextDirection textDirection;

  const AppTextField({Key? key,
    this.hintText = '',
    this.icon = Icons.person,
    required this.onChanged,
    required this.textEditingController,
    this.cursorColor = const Color(0xff717171),
    this.iconColor = const Color(0xffFEBE09),
    this.minLines = 1,
    this.maxLines = 2,
    this.width = 0,
    this.enabled = true,
    this.keyboardType = TextInputType.text,
    this.textDirection = TextDirection.ltr,
    this.editTextBackgroundColor = const Color(0xffEAEAEA)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * .85,
      height: 70,
      margin: EdgeInsets.symmetric(vertical: 0),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.transparent, width: 0),
        boxShadow: [
          BoxShadow(
              color: Colors.black12.withOpacity(0.06),
            blurRadius: 10,
            spreadRadius: 2
          )
        ]
      ),
      child: Directionality(
        textDirection: textDirection,
        child: TextField(
          onChanged: onChanged,
          keyboardType: keyboardType,
          controller: textEditingController,
          style: TextStyle(
              fontSize: 20,
              color: Colors.black87
          ),
          decoration: InputDecoration(
            icon: Icon(icon, color: Colors.black87.withOpacity(0.7),),
            contentPadding: EdgeInsets.only(bottom: 5),
            hintText: hintText,

            hintStyle: TextStyle(
                fontSize: 20,
                color: Colors.black87
            ),
          ),
        ),
      ),
    );
  }
}
