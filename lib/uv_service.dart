import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class UVService {
  Future<_UV> future;

  UVService() {
    this.future = fetchUV(lat: 3.12773, long: 101.594965);
  }
}

// UV API Connection
Future<_UV> fetchUV({lat, long}) async {
  // I've hardcoded the access token here. In a real app,
  // I would use a (dot) env file to load this data.
  const headers = {
    "x-access-token": "4d77936cbf34a9efe25807290b184f12",
  };
  final url = "https://api.openuv.io/api/v1/uv?lat=${lat}&lng=${long}";
  final response = await http.get(url, headers: headers);

  if (response.statusCode == 200) {
    return _UV.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to connect to Open UV');
  }
}

class _UV {
  final double uv;
  final datetime;

  _UV({this.uv, this.datetime});

  factory _UV.fromJson(Map<String, dynamic> json) {
    final result = json["result"];
    final formatter = DateFormat('MMM d, K:mm a', 'en_US');
    final uv_time = DateTime.parse(result["uv_time"]);
    final formattedUVTime = formatter.format(uv_time);
    return _UV(
      uv: result["uv"],
      datetime: formattedUVTime,
    );
  }
}
