import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shannons_ultimate_machine/helpers/device.helper.dart';

Future<void> sendRank(String time) async {
  final uri =
      Uri.https("shannons-ultimate-machine-ranking.vercel.app", "/api/ranks");
  final type = deviceType();
  await http.post(uri,
      headers: {"content-type": "application/json"},
      body: jsonEncode({"type": type, "time": time}));
}
