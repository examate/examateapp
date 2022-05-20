import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/global_style.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primary,
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: Column(
                  children: [
                    Text(
                      "LOGIN",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: white),
                    ),
                  ],
                ),
              ),

              Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
                    child: SvgPicture.asset(
                      "images/icons/undraw_secure_login_pdn4.svg",
                      //height: size.height * 0.35,
                      width: size.width * 0.9,
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.85,
                      decoration: BoxDecoration(
                        //color: kPrimaryLightColor,

                      ),

                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: secondary,
                          filled: true,
                          labelText: 'User Name',
                          labelStyle: TextStyle(
                            color: white,
                            fontSize: 17,
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: white,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      width: size.width * 0.85,
                      decoration: BoxDecoration(
                        //color: kPrimaryLightColor,

                      ),

                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: TextField(obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: secondary,
                          filled: true,
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: white,
                            fontSize: 17,
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            color: white,),
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: white,
                            ),
                          ),
                        ),
                      ),


                    TextButton(
                      onPressed: () {
                        //forgot password screen
                      },
                      child: const Text(
                        'Forgot Password',
                      ),
                    ),
                    Container(
                        height: 50,
                        width: size.width * 0.4,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          child: const Text('Login',style: TextStyle(color: white,fontSize: 20),),
                          onPressed: () {
                            print(nameController.text);
                            print(passwordController.text);
                          },
                        )),
                    Row(
                      children: <Widget>[
                        const Text('Create New Account',style: TextStyle(color: white),),
                        TextButton(
                          child: const Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

// TextEditingController nameController = TextEditingController();
// TextEditingController passwordController = TextEditingController();
