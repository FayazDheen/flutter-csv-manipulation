import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';
// import 'package:flutter/services.dart' show rootBundle;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  csv() async {
    final File file = new File("storage/emulated/0/csv/mem.csv"); //save csv locally in phone storage and give its path 

    Stream<List> inputStream = file.openRead();
    inputStream
        .transform(utf8.decoder) // Decode bytes to UTF-8.
        .transform(new LineSplitter()) // Convert stream to individual lines.
        .listen((String line) {
      // Process results.
      List row = line.split(','); // split by comma

      String sno = row[0];
      String name = row[1];
      String designation = row[2];
      if (designation == "Staff") {
        print('$sno, $name, $designation');
      }
    }, onDone: () {
      print('File is now closed.');
    }, onError: (e) {
      print(e.toString());
    });
  }

  @override
  void initState() {
    csv();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HOME")),
      body: Container(),
    );
  }
}
