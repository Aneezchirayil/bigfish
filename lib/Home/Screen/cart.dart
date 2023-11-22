import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("My Cart"),
      ),
      body: Column(
        children: [
          SizedBox(height: 300,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white,boxShadow: [BoxShadow(color: Colors.black)]),
                child: 
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 100,width: 100,
                    child: Image.asset("assets/images/ayala img.jpeg",fit: BoxFit.fill,),),
                    SizedBox(
                      width: 100,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Indian Mackerel/ Ayala / Bangda / Aiyla(large 6+ count/kg)"),
                          SizedBox(height: 5,),
                          Text("Rs 199.00")
                        ],
                      ),
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){}, child: Text("Remove"),style: ElevatedButton.styleFrom(backgroundColor: Colors.grey)),
                         SizedBox(height: 5,),
                        Text("Qty : 2.25 kg")
                      ],
                    )
                  ],
                ),
                          ),
              );
            },),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Final Price",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "0.769 * 580 = 446",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Coupon discount",
                          //style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "0",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery charge :"),
                        Text(
                          "FREE",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sub Total",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Rs. 468.00",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
              ],
            ),
          ),
          ),
          Divider(),
          TextField(decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.label),
            hintText: "ADD PROMO CODE",
          ),),
          SizedBox(height: 50,
          width: double.infinity,
          child: ElevatedButton(onPressed: (){}, child: Text("Confirm Order"),style: ElevatedButton.styleFrom(backgroundColor: Colors.red),)),
         
        ],
      ),
    );
  }
}