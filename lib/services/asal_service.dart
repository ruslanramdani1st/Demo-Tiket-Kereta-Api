import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dudeloka/models/asals_model.dart';

class AsalService {
  static Future<AsalsModel> fetchDataAsal() async {
    var response =
        await http.get(Uri.parse("http://dudeloka.herokuapp.com/api/ApiAsal"));
    if (response.statusCode == 200) {
      var data = response.body;
      return AsalsModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
