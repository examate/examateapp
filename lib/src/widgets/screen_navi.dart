import 'package:flutter/material.dart';

void changeScreen(BuildContext context, Widget widget){
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void ScreenReplacement(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget))  ;
}




// Widget customRadio(String txt, int index) {
//   return OutlineButton(
//       onPressed: () => changeIndex(index),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       borderSide: BorderSide(
//           color: selectedIndex == index ? Color(0xFF2661FA) : Colors.grey),
//       child: Text(
//         txt,
//         style: TextStyle(
//             color: selectedIndex == index ? Color(0xFF2661FA) : Colors.grey,
//             fontSize: 15),
//       ));
// }