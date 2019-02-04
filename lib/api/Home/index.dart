import 'package:myapp/api/index.dart';

class HomeApi {
  static getTest() async {
    return await Api.get('home');
  }
}
