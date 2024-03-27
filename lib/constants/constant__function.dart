import 'dart:convert';

import 'package:http/http.dart' as http;

class ConstantFunction {
  static Future<List<Map<String, dynamic>>> getResponse(String search) async {
    String app_id = 'b4608057';
    String app_key = '7887aed4cfb09f3b9542d069129769ce';
    String api =
        "https://api.edamam.com/search?q=$search&app_id=${app_id}&app_key=${app_key}&from=0&to=3&calories=591-722&health=alcohol-free";

    final response = await http.get(Uri.parse(api));
    List<Map<String, dynamic>> recipe = [];
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      if (data['hits'] != null) {
        for (var hit in data['hits']) {
          recipe.add(hit['recipe']);
        }
      }
      return recipe;
    }
    return recipe;
  }
}
