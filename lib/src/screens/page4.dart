import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:myapp/src/widgets/screen_navi.dart';


import 'page5.dart';




//1c9854
class page4 extends StatefulWidget {
  const page4({Key? key}) : super(key: key);

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  // sem
  int _value = 0;

  // year
  List<String> lst = ['1st Year', '2nd Year', '3rd Year', '4th Year'];
  int selectedIndex = 0;

  //drop down
  String dropdownValue = 'CSE';
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('College Details'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text('User name',
                        style:
                            TextStyle(fontSize: 30, color: Color(0xFF2661FA))),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // 1st divider
            Row(
              children: const <Widget>[
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('I am in...',
                    style: TextStyle(fontSize: 30, color: Color(0xFF2661FA))),
              ],
            ),

            // -------X-------
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //
            //
            //
            //
            //     Column(
            //       children: [
            //         Radio(
            //             value: 1,
            //             groupValue: _value,
            //             onChanged: (value) {
            //               setState(() {
            //                 _value = 1;
            //               });
            //             }),
            //         Text('First Year')
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Radio(value: 2, groupValue: _value, onChanged: (value) {
            //           setState(() {
            //             _value = 2;
            //           });}),
            //         Text('Second Year')
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Radio(value: 3, groupValue: _value, onChanged: (value) {
            //           setState(() {
            //             _value = 3;
            //           });}),
            //         Text('Third Year')
            //       ],
            //     ),
            //     Column(
            //       children: [
            //         Radio(value: 4, groupValue: _value, onChanged: (value) {
            //           setState(() {
            //             _value = 4;
            //           });}),
            //         Text('Fourth Year')
            //       ],
            //     )
            //   ],
            // ),
            // -------X-------
            const SizedBox(
              height: 30,
            ),

            // year radio
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                customRadio(lst[0], 0),
                customRadio(lst[1], 1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                customRadio(lst[2], 2),
                customRadio(lst[3], 3),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            // 2nd divider
            Row(
              children: const <Widget>[
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

            //sem UI

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Semester',
                    style: TextStyle(fontSize: 30, color: Color(0xFF2661FA))),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                children: [
                  Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = 1;
                        });
                      }),
                  Text('First Semester')
                ],
              ),
              Column(
                children: [
                  Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = 2;

                        });
                      }),
                  Text('Second Semester')
                ],
              ),
            ]),
            SizedBox(
              height: 20,
            ),

            // 3rd divider
            Row(
              children: const <Widget>[
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


            //branch
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Branch',
                    style: TextStyle(fontSize: 30, color: Color(0xFF2661FA))),
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<String>(

                  dropdownColor: Colors.blue.shade100,
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 3,
                    color: Color(0xFF2661FA),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['CSE', 'ECE', 'EEE', 'Mech','Civil']
                      .map<DropdownMenuItem<String>>((String value1) {
                    return DropdownMenuItem<String>(
                      value: value1,
                      child: Text(value1),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //4th divider
            Row(
              children: const <Widget>[
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                    icon: Icon(
                      Icons.search_sharp,
                      color: Color(0xFF2661FA),
                    ),
                    hintText: 'Enter your college name',
                    labelText: 'College Name',
                    fillColor: Color(0xFF2661FA)),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // 5th divider
            Row(
              children: const <Widget>[
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
            //submit buttom
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
                      'Submit',
                      style: TextStyle(fontSize: 25),
                    ),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () =>changeScreen(context, page5()),
                  ),
                ),
              ],


            )







          ],
        ),
      ),
    );
  }




//year radio code
  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
      print(index);
    });
  }

//year radio custom

  Widget customRadio(String txt, int index) {
    return OutlinedButton(
        onPressed: () => changeIndex(index),
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

            side: BorderSide(
                width: 2,
                color: selectedIndex == index ? Color(0xFF2661FA) : Colors.grey),
            ),


        child: Text(
          txt,
          style: TextStyle(
              color: selectedIndex == index ? Color(0xFF2661FA) : Colors.grey,
              fontSize: 15),




    ));
  }
}
