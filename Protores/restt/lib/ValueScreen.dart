import 'package:flutter/material.dart';
String tableId = "";
class ScreenValue extends StatelessWidget {
  const ScreenValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(child: ElevatedButton(onPressed: (){Navigator.of(context).pushNamed("HomeScreen");tableId="3";}, child: const Text("Press Me"))),
      
    );
  }
}