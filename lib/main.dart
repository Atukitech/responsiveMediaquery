import 'package:flutter/material.dart';
import 'package:mdapp/responsive/desktop.dart';
import 'package:mdapp/responsive/mobile.dart';
import 'package:mdapp/responsive/responsive_layout.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const ResponsiveLayput(
        mobile: Mobile(),
        desktop: Desktop(),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final widtscreen = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: widtscreen <= 600 ? Colors.red : Colors.pink,
//       body: Text('Size Is  $widtscreen'),
//     );
//   }
// }
