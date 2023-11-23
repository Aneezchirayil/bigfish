import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Referpage extends StatefulWidget {
  const Referpage({super.key});

  @override
  State<Referpage> createState() => _ReferpageState();
}

class _ReferpageState extends State<Referpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),

        backgroundColor: Colors.black,
        title: Text("Refer & Earn",style: TextStyle(color: Colors.white),),
      ),
      body: Align(alignment: Alignment.topCenter,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Earn upto Rs 100",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            Container(height: 200,
            child: Image.asset("assets/images/refer-n-earn.png"),),
            Text("Get Rs 100 when your friend completes"),
            Text("his/her first purchase with us"),
            SizedBox(height: 20,),
            Text("Your Code"),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HFDB5567"),
                SizedBox(width: 5,),
                Icon(Icons.content_copy,size: 15,)
              ],
            ),
            SizedBox(height: 20,),
            DottedBorder(
              strokeWidth: 1,
              color: Colors.black,
              child: Container(
                height: 100,
                width: 250,
                child: Column(
                  children: [
                    Text("Your link"),
                    SizedBox(height: 10,),
                    Text("http://www.healthfish.com/hfdb5567-e5",style: TextStyle(color: Colors.blue),),
                    SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){}, icon: Image.asset("assets/images/whatsapp.png")),
                        IconButton(onPressed: (){}, icon: Image.asset("assets/images/facebook icon.png")),
                        IconButton(onPressed: (){}, icon: Image.asset("assets/images/gmail.png")),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}