import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';


import '../widgets/screen_navi.dart';
import 'demoui.dart';


class page5 extends StatefulWidget {
  const page5({Key? key}) : super(key: key);

  @override
  State<page5> createState() => _page5State();
}

class _page5State extends State<page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Details'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 15, 8, 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            icon: Icon(
                              Icons.phone,
                              color: Color(0xFF2661FA),
                            ),
                            hintText: 'Enter your Phone Number',
                            labelText: 'Phone Number',
                            fillColor: Color(0xFF2661FA)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: Form(
                        key: null,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.mail,
                                color: Color(0xFF2661FA),
                              ),
                              hintText: 'Enter your Email ID',
                              labelText: 'Email ID',
                              fillColor: Color(0xFF2661FA)),

                          validator: MultiValidator([
                            RequiredValidator(
                                errorText: "This Field Is Required"),
                            EmailValidator(errorText: "Invalid Email Address"),
                          ]),
                        ),

                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    height: 50,
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 25),
                    ),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: const <Widget> [
                Expanded(
                  child: Divider(
                    indent: 20,
                    endIndent: 20.0,
                    thickness: 2,
                    height: 10,

                  ),

                ),
              ],
            ),

            SizedBox(
              height: 40,
            ),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 25, 8, 8),
                  child: Text('OTP Verification',
                      style: TextStyle(fontSize: 25, color: Color(0xFF2661FA))),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                    icon: Icon(
                      Icons.verified,
                      color: Color(0xFF2661FA),
                    ),
                    hintText: 'Enter your OTP',
                    labelText: 'OTP',
                    fillColor: Color(0xFF2661FA)),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    height: 50,
                    child: const Text(
                      'Resend',
                      style: TextStyle(fontSize: 25),
                    ),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    height: 50,
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 25),
                    ),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
              ],


            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    height: 50,
                    child: const Text(
                      'PDF Demo',
                      style: TextStyle(fontSize: 25),
                    ),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () =>changeScreen(context, pdf()),
                  ),
                ),
              ],


            )
          ],
        ),
      ),
    );
  }
}
