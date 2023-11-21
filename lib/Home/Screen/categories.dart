

import 'package:bigfishaneez/Api/apiclass.dart';
import 'package:bigfishaneez/Api/model/homemodel.dart';
import 'package:bigfishaneez/Home/Products/seafish.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Categoriespage extends StatefulWidget {
  const Categoriespage({super.key});

  @override
  State<Categoriespage> createState() => _CategoriespageState();
}

class _CategoriespageState extends State<Categoriespage> {
  ValueNotifier<List<Categories>> catelist = ValueNotifier([]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  cateUser();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text("Categories"),
      // ),
      body: SizedBox(
            height:double.infinity,
            child: ValueListenableBuilder(
                valueListenable: catelist,
                builder: (context, List<Categories> newcate, child) {
                  return GridView.builder(
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        crossAxisCount: 2),
                    itemCount: newcate.length,
                    itemBuilder: (context, index) {
                      final categorie = catelist.value[index];
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Seafishpage(
                                    index: categorie.categoryId,
                                  ),
                                ));
                          },
                          child: Container(
                            // height: 200,
                            // width: 200,
                            decoration:
                                BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                              )
                            ]),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    child: Image(
                                        image: NetworkImage(
                                            categorie.image.toString())),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(categorie.name.toString()),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
          ),
    );
  }
  void cateUser() async {
    final formdata = FormData.fromMap({
      "user_id": 608,
      "key":
          "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc"
    });
    final result = await Apiclass().homeUserApi(formdata);
    if (result != null) {
      if (result.status == "success") {
        setState(() {
          catelist.value.clear();
          catelist.value.addAll(result.data!.categories!);
        });
      }
    }
  }
}