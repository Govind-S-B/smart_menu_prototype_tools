import 'dart:convert';
import 'package:flutter/cupertino.dart';
import "package:http/http.dart" as http;

getResult(String url)async
{ try{
    http.Response out = await http.get(Uri.parse(url));
    Map<String,dynamic> finalOut = jsonDecode(out.body);
    return finalOut["PIN_auth"];
  }
  catch(error){
    print("API Error : "+ error.toString());
    return "NULL"; // no response , authentication failed try again
  }
}

screenNav(String redirect,context)
{
  if (redirect == "0")
    {
      Navigator.of(context).pushNamed("FailScreen");
    }
  else if(redirect == "1")
    {
      Navigator.of(context).pushNamed("SuccessScreen");
    }
}


