import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:myapp/src/screens/page2.dart';
import 'package:myapp/src/screens/page5.dart';
import 'package:myapp/src/widgets/global_style.dart';
import 'package:myapp/src/widgets/global_style.dart';

import '../widgets/background.dart';
import '../widgets/global_style.dart';
import '../widgets/screen_navi.dart';

class page0 extends StatefulWidget {
  const page0({Key? key}) : super(key: key);

  @override
  State<page0> createState() => _page0State();
}

class _page0State extends State<page0> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "WELCOME TO",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: secondary),
              ),
              Text(
                "EXAMATE",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: secondary),
              ),

              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "images/pagezero.png",
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.05),


              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                width: size.width * 0.8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child:  ElevatedButton(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: accent),
                  ),

                  onPressed: () =>changeScreen(context, page2()),
                  style: ElevatedButton.styleFrom(
                      primary: primary,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      textStyle: TextStyle(
                          color: accent,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                width: size.width * 0.8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child:  ElevatedButton(
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(color: accent),
                    ),

                    onPressed: () => (null),
                    style: ElevatedButton.styleFrom(
                        primary: primary,
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        textStyle: TextStyle(
                            color: accent,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
