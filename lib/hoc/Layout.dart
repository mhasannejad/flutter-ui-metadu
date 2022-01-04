import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:line_icons/line_icons.dart';

class Layout extends StatelessWidget {
  final Widget child;

  const Layout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
        ),
        Positioned(
          right: -70,
          top: -50,
          child: Container(
            width: 220,
            height: 220,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [
                      Color(0xffFD6E6A),
                      Color(0xffFFC600),
                    ]

                )
            ),
          ),

        ),
        Positioned(
          bottom: -80,
          left: -70,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [
                      Color(0xff8E37D7),
                      Color(0xff667EEA),
                    ]

                )
            ),
          ),

        ),
        GlassContainer(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.40),
              Colors.white.withOpacity(0.10)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderGradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.60),
              Colors.white.withOpacity(0.10),
              Colors.lightBlueAccent.withOpacity(0.05),
              Colors.lightBlueAccent.withOpacity(0.6)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.39, 0.40, 1.0],
          ),
          blur: 25.0,
          borderWidth: 1.5,
          elevation: 3.0,
          //isFrostedGlass: true,
          shadowColor: Colors.black.withOpacity(0.20),
          alignment: Alignment.center,
          frostedOpacity: 0.12,
          padding: EdgeInsets.all(8.0),
        ),

        Positioned(
          top: 50,
          left: 25,

          child: Container(
            color: Colors.transparent,
            child: Material(
              color: Colors.transparent,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/metamorphose_100px.png',
                    width: 35,
                    height: 35,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      'MetaDu',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87.withOpacity(0.75)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        child,

      ],
    );
  }
}
