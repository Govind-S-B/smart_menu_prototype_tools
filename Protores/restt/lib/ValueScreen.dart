import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restt/HomeScreen.dart';
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