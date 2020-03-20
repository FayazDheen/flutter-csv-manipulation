import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // csv() async {
  //   final File file = new File(
  //       "storage/emulated/0/csv/mem.csv"); //save csv locally in phone storage and give its path
  //   print(file);
  //   Stream<List> inputStream = file.openRead();
  //   inputStream
  //       .transform(utf8.decoder) // Decode bytes to UTF-8.
  //       .transform(new LineSplitter()) // Convert stream to individual lines.
  //       .listen((String line) {
  //     // Process results.
  //     List row = line.split(','); // split by comma

  //     String sno = row[0];
  //     String name = row[1];
  //     String designation = row[2];
  //     if (designation == "Staff") {
  //       print('$sno, $name, $designation');
  //     }
  //   }, onDone: () {
  //     print('File is now closed.');
  //   }, onError: (e) {
  //     print(e.toString());
  //   });
  // }

  Future<String> loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }
  
  void loadCSV() {
    loadAsset('asset/mem.csv').then((dynamic output) {
      print(output);
      String test = output;
      var row = test.split('\r\n');
      for (var item in row) {
        var values = item.split(',');
        for (var i in values) {
          print(i);
        }
      }
    });
  }

  @override
  void initState() {
    // csv();
    loadCSV();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              loadCSV();
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}
