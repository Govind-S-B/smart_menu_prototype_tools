import 'package:flutter/material.dart';
import 'package:restt/ValueScreen.dart';
import 'package:restt/functions.dart';
class ScreenHome extends StatefulWidget   {
  ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  String url = "";
  String redirect= ""; 

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(),
      body:
      Column(
        children: [
          TextFormField(
            onChanged: (value) {
              url = "http://66.42.42.229:5000//RestApi?query="+value.toString()+"&id="+tableId;
            },
            decoration: const InputDecoration(
            icon: Icon(Icons.password),
            labelText: "Enter pin",
          ),),
          ElevatedButton(onPressed: () async{redirect= await getResult(url);screenNav(redirect, context);
          }, child: const Text("Verify") ),
          // chance of error
        ], 
      ),
    );
  }
} 
