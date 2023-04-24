
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myserenity_fyp/home/homepage.dart';
import 'package:myserenity_fyp/login/loginPage.dart';
import 'package:myserenity_fyp/video/vid_cat/cat1.dart';
import 'package:myserenity_fyp/video/vid_cat/cat2.dart';
import 'package:myserenity_fyp/video/vid_cat/cat3.dart';

import 'package:myserenity_fyp/video/vid_cat/cat5.dart';


//Future<void> main() async {
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MySerenity',
      theme: ThemeData(
        primaryColor: Colors.orange[900],
      ),
      home: loginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}