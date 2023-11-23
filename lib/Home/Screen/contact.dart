import 'package:flutter/material.dart';

class Contactpage extends StatefulWidget {
  const Contactpage({super.key});

  @override
  State<Contactpage> createState() => _ContactpageState();
}

class _ContactpageState extends State<Contactpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text("Contact",style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("How may we help you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Name"
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email"
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Mobile"
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Name"
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Subject"
                    ),
                  ),
                
                  
                ],
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){}, child: Text("SEND"),style: ElevatedButton.styleFrom(backgroundColor: Colors.red),)),
          )
        ],
      ),
    );
  }
}