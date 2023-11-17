
import 'package:bigfishaneez/Api/apiclass.dart';
import 'package:bigfishaneez/Api/model/recipitemmodal.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Itemrecipe extends StatefulWidget {
  String? index2;
  Itemrecipe({super.key,this.index2});

  @override
  State<Itemrecipe> createState() => _ItemrecipeState();
}

class _ItemrecipeState extends State<Itemrecipe> {
String? name="";
String? image="";
String? time="";
String? mindes="";
String? des="";
String? calo="";
String? ingre="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    srecipieUser();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(name.toString()),
      ),
      body: ListView(//crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(image.toString()),fit: BoxFit.fill)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(name.toString(),style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Icon(Icons.schedule,color: Colors.white70,),
                  Text(time.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  Icon(Icons.local_fire_department,color: Colors.white70,),
                  Text(calo.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              )
              ],),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Ingredients",style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 25,right: 15),
            child: Text(ingre.toString()),
          ),

          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Description",style: TextStyle(fontWeight: FontWeight.bold),),
          ),




          Padding(
            padding: const EdgeInsets.only(left: 25,right: 15),
            child: Text(des.toString()),
          )

        ],
      ),
    );
  }

void srecipieUser()async{
  final formdata = FormData.fromMap({
    "user_id":608,
    "recipe_id":widget.index2,
    "key":"koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc"
  });
  final result= await Apiclass().srecipieUserApi(formdata);
  if(result != null){
    if(result.status== "success"){
      setState(() {
        print(result.data);
       name=result.data!.recipie!.name;
       image=result.data!.recipie!.image;
       time=result.data!.recipie!.time;
       mindes=result.data!.recipie!.minDescription;
       des=result.data!.recipie!.description;
       calo=result.data!.recipie!.cals;
       ingre=result.data!.recipie!.ingredients;
      });
    }
  }
}

}