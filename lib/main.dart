import 'package:covid_19_level/homePage.dart';
import 'package:flutter/material.dart';
import 'levelScrap.dart';
import 'permissionHandler.dart';
import 'package:location/location.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: homePage(),
    );
  }
}
class HelloPage extends StatefulWidget {
  const HelloPage({Key? key}) : super(key: key);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {



  @override
  Widget build(BuildContext context) {
    return homePage();
  }
}

