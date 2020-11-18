import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder> {
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
      routes: routes,
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello World"),
//         centerTitle: true,
//         backgroundColor: Colors.blueGrey,
//         elevation: 0.0,
//       ),
//       body: Center(
//         child: Column(children: [
//           Text("LJH"),
//           Text("LJH"),
//           Text("LJH"),
//           Text("LJH"),
//         ],),)

//     );
//   }
// }