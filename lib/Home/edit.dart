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
        decoration: BoxDecoration(color: Colors.transparent
        ),
        child: 
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,//blurRadius: 0.1
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(height: 280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,//blurRadius: 0.1
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                       Expanded(
                         child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Expanded(
                               child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Pincode"
                                ),
                                             ),
                             ),
                                           Expanded(child: SizedBox(width: 7,)),
                         Expanded(
                           child: TextField(
                            decoration: InputDecoration(
                              hintText: "State"
                            ),
                                             ),
                         ),
                           ],
                         ),
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
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: (){},
                   child: Text("Update")),
              )
            ],
          ),
        ),
      ),
    );
  }
}