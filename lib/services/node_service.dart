import 'dart:convert';
import 'package:http/http.dart' as http;

class NodeService {
  final String baseUrl = 'http://localhost:3000';

  Future<http.Response> post(String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse('$baseUrl$endpoint');
    return await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );
  }

  Future<http.Response> get(String endpoint) async { 
    final url = Uri.parse('$baseUrl$endpoint');
    return await http.get(url);
  }
}
