import 'package:flutter/material.dart';
import 'package:restt/value_screen.dart';

void main()
{runApp(const MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor:Colors.lightBlue),
      home: const ScreenValue()
    );
  }
}
