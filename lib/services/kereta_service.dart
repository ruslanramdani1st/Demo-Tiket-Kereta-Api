import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dudeloka/models/keretas_model.dart';

class KeretaService {
  static Future<KeretasModel> fetchDataAsal() async {
    var response =
        await http.get(Uri.parse("http://dudeloka.herokuapp.com/api/ApiKereta"));
    if (response.statusCode == 200) {
      var data = response.body;
      return KeretasModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
