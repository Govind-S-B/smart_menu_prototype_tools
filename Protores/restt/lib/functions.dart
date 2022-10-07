import "package:http/http.dart" as http;
getResult(String url)async
{
  http.Response out = await http.get(Uri.parse(url));
  print(out.body);
}
void main()
{
  getResult("http://127.0.0.1:5000/RestApi?query=00234");
}

