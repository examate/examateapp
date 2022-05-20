import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/src/screens/page1.dart';
import 'package:myapp/src/screens/page2.dart';
import 'package:myapp/src/screens/welcome.dart';

import 'src/screens/page0.dart';
import 'src/screens/page3.dart';



Future main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Examate",
      home: Splash(),
    );
  }
}




// Certificate fingerprints:
// SHA1: 03:3A:61:92:86:19:60:46:2F:A8:F9:42:87:E9:3D:FB:C3:C7:26:25
// SHA256: FA:59:AE:8E:0F:D5:9D:13:79:BD:B9:7A:B2:A6:EA:23:2C:0C:85:DE:A2:98:B1:F0:3E:48:25:8A:F4:07:AE:2C
// Signature algorithm name: SHA256withRSA
// Subject Public Key Algorithm: 2048-bit RSA key
// Version: 3

