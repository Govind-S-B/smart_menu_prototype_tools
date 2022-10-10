import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:restt/FailScreen.dart';
import 'package:restt/HomeScreen.dart';
import 'package:restt/SuccessScreen.dart';
import 'package:restt/ValueScreen.dart';
import 'package:restt/functions.dart';


void main()
{runApp(MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor:Colors.lightBlue),
      home: ScreenValue(),
      routes: {
        "HomeScreen":(ctx){return  ScreenHome();},
        "SuccessScreen" :(ctx){return const ScreenSuccess();},
        "FailScreen":(ctx){return const ScreenFail();},
      },
    );
  }
}
