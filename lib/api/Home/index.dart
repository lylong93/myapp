import 'package:myapp/api/index.dart';

class HomeApi {
  static getTest() async {
    var ok = await Api.get('home');
    return ok;
  }
}
