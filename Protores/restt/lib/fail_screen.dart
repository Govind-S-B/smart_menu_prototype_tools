import 'package:flutter/material.dart';

class ScreenFail extends StatelessWidget {
  const ScreenFail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: Colors.red,
        child: const Center(child: Text("Login Failed")),
      ),
    );
    
    
  }
}