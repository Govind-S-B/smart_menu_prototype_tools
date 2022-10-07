import 'package:flutter/material.dart';
import 'package:restt/functions.dart';

void main()
{runApp(MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor:Colors.lightBlue),
      home: ScreenHome()
    );
  }
}

class ScreenSuccess extends StatelessWidget {
  const ScreenSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: Colors.green,
        child: Center(child: const Text("Login Successful")),
      ),
    );
    
    
  }
}

class ScreenFail extends StatelessWidget {
  const ScreenFail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: Colors.red,
        child: Center(child: const Text("Login Failed")),
      ),
    );
    
    
  }
}

class ScreenHome extends StatelessWidget  {
  ScreenHome({Key? key}) : super(key: key);
  String url = "";
  String redirect = ""; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Column(
        children: [
          TextFormField(
            onChanged: (value) {
              url = "http://127.0.0.1:5000/RestApi?query="+value.toString();
              print(url);
            },
            decoration: const InputDecoration(
            icon: Icon(Icons.password),
            labelText: "Enter pin",
          ),),
          ElevatedButton(onPressed: ()async {print(await getResult("http://127.0.0.1:5000/RestApi?query=0124"));}, child: const Text("Verify")) // chance of error
        ],
      ),
    
      

    );
  }
} 