import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metadu_nftshop/pages/nft_page.dart';

class NFTItem extends StatelessWidget {
  final String name;
  final String image;
  const NFTItem({Key? key,required this.name,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>NFTPage()));
      },
      child: Container(
        height: 250,
        margin: EdgeInsets.symmetric(horizontal: 12.5,vertical: 8),
        width: MediaQuery.of(context).size.width / 1.9,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12.withOpacity(0.05),
                  blurRadius: 5,
                  spreadRadius: 1)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 160,
              width: MediaQuery.of(context).size.width / 1.9,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          '$image'))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '$name',
                    style: TextStyle(fontSize: 18),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
                    child: Text('mohamamd'),
                  ),
                  Expanded(child: Container()),
                  Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xff9899FF).withOpacity(0.5)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('15'),
                          Icon(LineIcons.ethereum,color: Colors.black87.withOpacity(0.8),)
                        ],
                      )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
