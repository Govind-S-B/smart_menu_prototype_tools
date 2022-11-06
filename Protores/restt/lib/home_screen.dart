import 'package:flutter/material.dart';
import 'package:restt/functions.dart';

class ScreenHome extends StatefulWidget   {
  const ScreenHome({Key? key}) : super(key: key);

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
              url = "http://localhost:5000//RestApi?query=$value";
            },
            decoration: const InputDecoration(
            icon: Icon(Icons.password),
            labelText: "Enter pin",
          ),),
          ElevatedButton(onPressed: () async{
            redirect= await getResult(url);
            if (!mounted) return;
            screenNav(redirect, context);
          }, child: const Text("Verify") ),
          // chance of error
        ], 
      ),
    );
  }
} 
