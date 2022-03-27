import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dudeloka/models/tujuans_model.dart';

class TujuanService {
  static Future<TujuansModel> fetchDataTujuan() async {
    var response =
        await http.get(Uri.parse("http://dudeloka.herokuapp.com/api/ApiTujuan"));
    if (response.statusCode == 200) {
      var data = response.body;
      return TujuansModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
