import 'package:belajar/global_resources.dart';
import 'package:belajar/models/user_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<List<UserModel>> userList() async {
    var url = Uri.parse('https://restaurant-api.dicoding.dev/list');
    var conn = await http.get(url);
    if (conn.statusCode == 200) {
      List<dynamic> deJson = await jsonDecode(conn.body)['restaurants'];
      return deJson.map((e) => new UserModel.createIdential(e)).toList();
    }
    return [];
  }
}
