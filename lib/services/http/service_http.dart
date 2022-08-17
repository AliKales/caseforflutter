import 'dart:convert';

import 'package:http/http.dart' as http;

class ServiceHttp {
  Future get(String link, [Map<String, String>? headers]) async {
    http.Response? response;

    try {
      var url = Uri.parse(link);
      response = await http.get(url, headers: headers);
    } catch (e) {
      return null;
    }

    if (response.statusCode != 200) return;

    return jsonDecode(response.body);
  }
}
