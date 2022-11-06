import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'dart:convert';
import 'package:restt/home_screen.dart';

void main() {
  runApp(const ScreenValue());
}

class ScreenValue extends StatelessWidget {
  const ScreenValue({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'flutter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QRScanner'),
      ),
      body: MobileScanner(
        onDetect: (barcode, args) {
          
          debugPrint("Barcode Found!${barcode.rawValue!}");
          
          try{
            Map decodedQr = json.decode(barcode.rawValue!);
          
            debugPrint(decodedQr["table_id"].toString());
            
            if (decodedQr.containsKey("table_id")){
              debugPrint(decodedQr["table_id"].toString());
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScreenHome()));
          }
          else{
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Container(
                height: 90,
                decoration: BoxDecoration(color: Colors.red.shade600),
                child: const Text("Wrong QR , try again"),
              ),
              behavior: SnackBarBehavior.floating,
              )
            );
          }
          }
          catch(r){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Container(
                height: 90,
                decoration: BoxDecoration(color: Colors.red.shade600),
                child: const Text("Wrong QR , try again"),
              ),
              behavior: SnackBarBehavior.floating,
              )
            );
          }
        }
      ),
    );
  }
}
