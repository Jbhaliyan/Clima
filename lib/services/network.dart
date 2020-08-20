import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      //if status is OK
      String data = response.body;
      //convert the response.body into jsonString
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
