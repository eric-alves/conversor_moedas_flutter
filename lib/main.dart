import 'dart:convert' as convert;
import 'dart:convert';

import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  var url = Uri.parse(
      "https://api.hgbrasil.com/finance?format=json-cors&key=9b0dc58f");

  var response = await http.get(url);

  if (response.statusCode != null) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse;
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
