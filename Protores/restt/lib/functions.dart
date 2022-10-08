import 'dart:convert';
import 'package:flutter/cupertino.dart';
import "package:http/http.dart" as http;

getResult(String url)async
{
  http.Response out = await http.get(Uri.parse(url));
  String finalOut = jsonDecode(out.body).toString();
  return(finalOut);
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


