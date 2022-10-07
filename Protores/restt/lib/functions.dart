import "package:http/http.dart" as http;
getResult(String url)async
{
  http.Response out = await http.get(Uri.parse(url));
  return(out.body);
}


