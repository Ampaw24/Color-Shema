import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({required this.url});
   String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = response.body;
    return  jsonDecode(data);
    
    } else {
      throw Exception("Failed to Load Data \n ${response.statusCode}");
    }
  }
}
