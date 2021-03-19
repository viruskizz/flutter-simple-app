import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:simple_app/models/total_count_model.dart';

class ReportService {
  final String _authorityUrl = env['AUTHORITY_URL'];
  final String _envPath = env['ENV_PATH'];
  final String _xkey = env['XKEY'];

  Future<TotalCountModel> getGrandTotalReport() async {
    final path = _envPath + "/reports/grand-total";
    final uri = new Uri.https(_authorityUrl, path);
    try {
      var response = await http.get(uri, headers: {'x-api-key': _xkey});
      // print(response.statusCode);
      // print(response.body);
      final extracted = jsonDecode(response.body) as Map;
      return TotalCountModel.fromJson(extracted);
    } catch (e) {
      print(e);
      return e;
    }
  }
}