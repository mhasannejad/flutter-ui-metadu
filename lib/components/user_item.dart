import 'package:emojis/emojis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metadu_nftshop/pages/user_page.dart';

class UserItem extends StatelessWidget {
  const UserItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserPage()));
      },
      child: Container(

        width: MediaQuery.of(context).size.width / 1.9,
        height: 50,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.symmetric(horizontal: 12.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/ezgif-2-95d8f7cb6b.png')
                ),
                shape: BoxShape.circle,

              ),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('mohamamd , 200 ${Emojis.artistPalette}'),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black12.withOpacity(0.06),
                  blurRadius: 5,
                  spreadRadius: 1)
            ],
            borderRadius:
            BorderRadius.all(Radius.circular(50))),

      ),
    );
  }
}
