import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import 'page0.dart';
import 'page2.dart';
import 'page4.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => page0())));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF002956),

      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: size.height * 0.7,
              width: double.infinity,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child:PlayAnimation<double>(
                        tween: Tween(begin: 100, end: 275),
                        duration: const Duration(seconds: 2,),
                        //curve: Curves.easeOut,
                        builder: (context, child, value) {
                          return Container(
                            width: value,
                            height: value,
                            child:Image.asset('images/cat.png',
                              alignment: Alignment.center,fit: BoxFit.fill,),
                          );
                        },
                      )
                  ),
                  // Text('EXAMATE',
                  //     style: TextStyle(fontSize: 40, color: Color(0xFFFFFFFF)))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

