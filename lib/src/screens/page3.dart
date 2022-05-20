import 'package:flutter/material.dart';



import '../widgets/screen_navi.dart';
import 'page4.dart';


//1c9854
class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
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
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.fromLTRB(5, 50, 5, 25),
                      child: Image.asset(
                        'images/exam_pic.png',
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.4,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Welcome to',
                      style: TextStyle(fontSize: 50, color: Color(0xFF2661FA))),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Examate',
                      style: TextStyle(fontSize: 50, color: Color(0xFF1c9854))),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text('I am... ',
                      style: TextStyle(fontSize: 50, color: Color(0xFF1c9854))),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(

                      decoration: const InputDecoration(
                          icon: Icon(Icons.person, color: Color(0xFF2661FA),),
                          hintText: 'Enter your name',
                          labelText: 'Name',
                          fillColor: Color(0xFF2661FA)
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),

            Row( mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: FlatButton(

                    child: Text('Next', style: TextStyle(fontSize: 25),),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () => changeScreen(context, page4()),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


