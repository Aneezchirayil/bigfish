import 'package:flutter/material.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Edit Profile"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white
        ),
        child: 
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Name"
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Mobile Number"
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Email"
                      ),
                    ),
                  ],
                ),
              ),
        
              ),
              Container(height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "City"
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Locality,area or street "
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Flat no, Building name"
                      ),
                    ),
                     Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         TextField(
                          decoration: InputDecoration(
                            hintText: "Pincode"
                          ),
                    ),
                    SizedBox(width: 10,),
                     TextField(
                      decoration: InputDecoration(
                        hintText: "State"
                      ),
                    ),
                       ],
                     ),
                      TextField(
                      decoration: InputDecoration(
                        hintText: "Landmark(optional)"
                      ),
                    ),
                  ],
                ),
              ),
        
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){},
                 child: Text("Update"))
            ],
          ),
        ),
      ),
    );
  }
}