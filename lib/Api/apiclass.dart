import 'dart:convert';

import 'package:bigfishaneez/Api/logmodel.dart';
import 'package:bigfishaneez/Api/regmodel.dart';
import 'package:bigfishaneez/Api/url.dart';
import 'package:dio/dio.dart';

class Apiclass {
  static Apiclass instance=Apiclass();
  factory(){
    return instance;
  }
  final dio=Dio();
  final url=Url();
  Apiclass(){
    dio.options=BaseOptions(
      baseUrl: url.baseUrl,
      responseType: ResponseType.json
    );
  }

Future<Register?>registerUserApi(FormData formData)async{
  try{
      final result = await dio.post(url.registerEnd,data: formData);
        return Register.fromJson((result.data));  
  }on DioException catch (e){
    print(e);
  }catch(e){
    print(e);
  }
}


Future<Login?>loginUserApi(FormData formData)async{
  try{
    final result = await dio.post(url.loginEnd,data: formData);
    return Login.fromJson(result.data);
  }on DioException catch(e){
    print(e);
  }catch(e){
    print(e);
  }
}
}

