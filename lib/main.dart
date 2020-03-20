import 'package:flutter/material.dart';


import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget { 
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
       '/': (_) => Home(),
     },
    );
  }
}
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {




//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
      
//       _counter++;
//     });
//   }
  
//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), 
//     );
//   }
// }





// main(List arguments) async {
// //   Future<String> getFileData(String path) async {
// //   return await rootBundle.loadString(path);
// // }
// //   String data = await getFileData("assets/mem.csv");
// //   print(data);
//   final File file = new File("storage/emulated/0/csv/mem.csv");
//   // String data = await  rootBundle.loadString("assets/mem.csv");
//   // print(data);
//   Stream<List> inputStream = file.openRead();
//   inputStream
//       .transform(utf8.decoder)       // Decode bytes to UTF-8.
//       .transform(new LineSplitter()) // Convert stream to individual lines.
//       .listen((String line) {   
//         // print(line.length);     // Process results.
//        List row = line.split(','); 
//                                  // split by comma
//         String sno = row[0];
//         String name = row[1];
//         String designation = row[2];
//         if(designation=="Staff"){
//           print('$sno, $name, $designation');
//         }
//       },
//       onDone: () { print('File is now closed.'); },
//       onError: (e) { print(e.toString()); });
// }