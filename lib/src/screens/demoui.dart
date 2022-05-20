import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/pdf/button_widget.dart';


import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import '../pdf/pdf_api.dart';
import '../pdf/pdf_viewer_page.dart';









class pdf extends StatefulWidget {
  const pdf({Key? key}) : super(key: key);

  @override
  State<pdf> createState() => _pdfState();
}

class _pdfState extends State<pdf> {
  static final String title = 'PDF Viewer';
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Details'),
      ),

      body: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[

                //1st PDF
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ButtonWidget(
                    text: 'Math',
                    onClicked: () async {
                      final url = 'Math.pdf';
                      final file = await PDFApi.loadFirebase(url);

                      if (file == null) return;
                      openPDF(context, file);
                    },
                  ),
                ),

                // 2nd pdf

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ButtonWidget(
                    text: 'CRT notes',
                    onClicked: () async {
                      final url = 'CRT.pdf';
                      final file = await PDFApi.loadFirebase(url);

                      if (file == null) return;
                      openPDF(context, file);
                    },
                  ),
                ),

                // 3rd pdf
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ButtonWidget(
                    text: 'word',
                    onClicked: () async {
                      final url = 'demoword.docx';
                      final file = await PDFApi.loadFirebase(url);

                      if (file == null) return;
                      openPDF(context, file);
                    },
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }


  void openPDF(BuildContext context, File file) => Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)),
  );
}




















//
//
// cupertino_icons: ^1.0.4
// form_field_validator: ^1.1.0
// cloud_firestore: ^3.1.15
// flutter_spinkit: ^5.1.0
// url_launcher: ^6.1.2
// provider: ^6.0.2
//
//
// http: ^0.13.4
//
// file_picker: ^4.5.1
// path: ^1.8.0
// path_provider: ^2.0.10
//
// # display pdf
// flutter_pdfview: ^1.2.2
//
// firebase_core: ^1.17.0
// firebase_storage: ^10.2.1