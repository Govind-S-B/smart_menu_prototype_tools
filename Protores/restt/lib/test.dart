import 'package:restt/functions.dart';

Future<void> main() async {
  String x = await getResult("http://127.0.0.1:5000/RestApi?query=0124");
  print(x);
}