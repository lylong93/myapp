import 'package:dio/dio.dart';
Dio dio = new Dio();

String datasrc = "https://www.easy-mock.com/mock/5c32bcfc74cc6d35e97437a3/api/data";

class Api {
  static get(src) async{
    var response= await dio.get(src);
    return response;
  }
  static post() async{
    Response response= await dio.post("https://www.easy-mock.com/mock/5c32bcfc74cc6d35e97437a3/api/data");
    print(response.data);
  }
}