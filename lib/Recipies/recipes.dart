import 'package:bigfishaneez/Api/apiclass.dart';
import 'package:bigfishaneez/Api/model/recipiemodel.dart';
import 'package:bigfishaneez/Home/Screen/homepage.dart';
import 'package:bigfishaneez/Recipies/recipieitem.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Recipespage extends StatefulWidget {
  const Recipespage({super.key});

  @override
  State<Recipespage> createState() => _RecipespageState();
}

class _RecipespageState extends State<Recipespage> {
  ValueNotifier <List<Data>> recipie = ValueNotifier([]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recipieUser();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text("Recipes",style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(height: double.infinity,
                    child: ValueListenableBuilder(
                      valueListenable: recipie,
                      builder: (context, List<Data>newrecpie, child) 
                        
                       {
                        return GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            mainAxisExtent: 200,
                            crossAxisSpacing: 5), 
                            itemCount: newrecpie.length,
                            itemBuilder: (context, index) {
                              final recipiee=recipie.value[index];
                              return Padding(
                                padding: const EdgeInsets.all(10),
                                child:
                                 InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Itemrecipe(index2: recipiee.id,),));
                                  },
                                   child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(color: Colors.black)
                                      ]
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 80,
                                            width: double.infinity,
                                            child: Image.network(recipiee.image.toString(),fit: BoxFit.fill,),),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(recipiee.name.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                                              SizedBox(height: 5,),
                                              Text("Difficulty : Easy",style: TextStyle(color: Colors.grey),),
                                              Text("Cooking : ${recipiee.time} Minutes",style: TextStyle(color: Colors.grey),)
                                            ],
                                                                              ),
                                          ),)
                                        
                                      ],
                                    ),
                                                           ),
                                 ),
                              );
                              
                            },);
                      }
                    ),
                  ),
      ),
    );
  }

void recipieUser()async{
  final formdata= FormData.fromMap({
    "user_id":vaal,
    "key":"koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc"
  });

  final result= await Apiclass().recipieUserApi(formdata);
  if(result != null){
    if(result.status=="success"){
      setState(() {
        print(result.data);
        recipie.value.clear();
        recipie.value.addAll(result.data!);

      });
    }
  }
}

}