import 'package:flutter/material.dart';

class Signpage extends StatefulWidget {
  const Signpage({super.key});

  @override
  State<Signpage> createState() => _SignpageState();
}

class _SignpageState extends State<Signpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10,left:10,right: 10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "First Name"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Last Name"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "E-mail"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Mobile Number"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Divider(),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(height:45,
                child: ElevatedButton(
                  onPressed: (){},
                   child: Text("Register"),
                   style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.red
                   ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}