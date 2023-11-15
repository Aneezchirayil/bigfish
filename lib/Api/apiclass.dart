import 'dart:convert';

import 'package:bigfishaneez/Api/model/homemodel.dart';
import 'package:bigfishaneez/Api/model/logmodel.dart';
import 'package:bigfishaneez/Api/model/productmodel.dart';
import 'package:bigfishaneez/Api/model/recipiemodel.dart';
import 'package:bigfishaneez/Api/model/recipitemmodal.dart';
import 'package:bigfishaneez/Api/model/regmodel.dart';
import 'package:bigfishaneez/Api/model/singitemmodel.dart';
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

Future<Homemodel?>homeUserApi(FormData formData) async{
try{
final result = await dio.post(url.homeEnd,data: formData);
return Homemodel.fromJson(result.data);
}on DioException catch(e){
  print(e);

}catch(e){
  print(e);
}
}


Future<Productmodel?>produtUserApi(FormData formData)async{
  try{
    final result = await dio.post(url.productEnd,data: formData);
    return Productmodel.fromJson(result.data);
  }on DioException catch(e){
    print(e);
  }catch(e){
    print(e);
  }
}


Future<Singleitem?>sproductUserApi(FormData formData)async{
  try{
    final result = await dio.post(url.singlepdEnd,data: formData);
    print("999999999$result");
    return Singleitem.fromJson(result.data); 
  }on DioException catch(e){
    print(e);
  }catch(e){
    print(e);
  }
}


Future<Recipiemodal?>recipieUserApi(FormData formData)async{
  try{
    final result= await dio.post(url.recipieEnd,data: formData);
    return Recipiemodal.fromJson(result.data);
  }on DioException catch(e){
    print(e);
  }catch(e){
    print(e);
  }
}



Future<Recipieitem?>srecipieUserApi(FormData formData)async{
  try{
    final result= await dio.post(url.singlerpEnd,data: formData);
    return Recipieitem.fromJson(result.data);
  }on DioException catch(e){
    print(e);
  }catch(e){
    print(e);
  }
}
}

