import 'package:dio/dio.dart';
Dio dio = new Dio();
//lylapp
//123456

String api = "https://www.easy-mock.com/mock/5c4da0c3e4522814af87849a/api/";

class Api {
  static get(src) async{
    var response= await dio.get('$api$src');
    return response.data;
  }
  static post() async{
    Response response= await dio.post("https://www.easy-mock.com/mock/5c32bcfc74cc6d35e97437a3/api/data");
    print(response.data);
  }
}