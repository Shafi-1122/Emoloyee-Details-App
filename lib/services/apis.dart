import 'dart:convert' as convert;

import 'package:flutter_application_edapt_network_connection_learning/modelclass/modelclass.dart';
import 'package:http/http.dart' as http;

class FetchDataClass {
  Future<List<Modelclass>> fetchDataFromApi() async {
    final response = await http.get(Uri.parse(
        'https://run.mocky.io/v3/bdcdffd7-df4c-4645-8290-d451ea6fe98a'));
// print(response.body);
    List<dynamic> list = convert.jsonDecode(response.body);
    List<Modelclass> details = list.map((e) => Modelclass.fromJson(e)).toList();

    return details;
  }
}
