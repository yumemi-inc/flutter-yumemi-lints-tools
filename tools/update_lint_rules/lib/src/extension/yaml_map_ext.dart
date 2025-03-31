import 'dart:convert';

import 'package:yaml/yaml.dart';

extension YamlMapToJson on YamlMap {
  Map<String, dynamic> toJson() {
    final jsonString = jsonEncode(this);
    return jsonDecode(jsonString);
  }
}
