import './node_service.dart';
import 'package:http/http.dart' as http;

class AdminService {
  final NodeService _nodeService = NodeService();

  Future<http.Response> loginAdmin(Map<String, dynamic> userData) async {
    return await _nodeService.post('/admin/login', userData);
  }
}