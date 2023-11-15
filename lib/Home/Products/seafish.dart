import 'package:bigfishaneez/Api/apiclass.dart';
import 'package:bigfishaneez/Api/model/productmodel.dart';
import 'package:bigfishaneez/Home/Products/singleitem.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Seafishpage extends StatefulWidget {
  String? index;
  Seafishpage({super.key, this.index});

  @override
  State<Seafishpage> createState() => _SeafishpageState();
}

class _SeafishpageState extends State<Seafishpage> {
  ValueNotifier<List<Data>> product = ValueNotifier([]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 500,
            child: ValueListenableBuilder(
                valueListenable: product,
                builder: (context, List<Data> newpd, child) {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 250,
                        crossAxisSpacing: 20),
                    itemCount: newpd.length,
                    itemBuilder: (context, index) {
                      final pd = product.value[index];
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Singproduct(
                                    index1: pd.productId,
                                  ),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(color: Colors.black)]),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Column(
                                children: [
                                  Container(
                                    height: 75,
                                    child: Image.network(pd.image.toString()),
                                  ),
                                  Spacer(),
                                  Text(pd.name.toString()),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(pd.price.toString()),
                                        Text(
                                          pd.price.toString(),
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey,
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer()
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
          Spacer(),
          Container(
            height: 60,
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black)],
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      children: [Icon(Icons.sort), Text("SORT")],
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      children: [Icon(Icons.sort), Text("FILTER")],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void productUser() async {
    final formdata = FormData.fromMap({
      "user_id": 608,
      "category_id": widget.index,
      "key":
          "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc",
    });
    final result = await Apiclass().produtUserApi(formdata);
    if (result != null) {
      if (result.status == "success") {
        setState(() {
          print(result.data);
          product.value.clear();
          product.value.addAll(result.data!);
        });
      }
    }
  }
}
