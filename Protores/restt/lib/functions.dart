import 'dart:convert';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:restt/fail_screen.dart';
import 'package:restt/success_screen.dart';

getResult(String url)async
{ try{
    http.Response out = await http.get(Uri.parse(url));
    Map<String,dynamic> finalOut = jsonDecode(out.body);
    return finalOut["PIN_auth"];
  }
  catch(error){
    debugPrint("API Error : $error");
    return "NULL"; // no response , authentication failed try again
  }
}

screenNav(String redirect,context)
{
  if (redirect == "0")
    {
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScreenFail()));
    }
  else if(redirect == "1")
    {
      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScreenSuccess()));
    }
}


