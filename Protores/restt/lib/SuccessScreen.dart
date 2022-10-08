import 'package:flutter/material.dart';

class ScreenSuccess extends StatelessWidget {
  const ScreenSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: Colors.green,
        child: const Center(child: Text("Login Successful")),
      ),
    );
    
    
  }
}