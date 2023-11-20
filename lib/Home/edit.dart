import 'package:bigfishaneez/Api/apiclass.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}
final finame=TextEditingController();
final laname=TextEditingController();
final phnum=TextEditingController();
final emaail=TextEditingController();
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
                child: Container(height: 210,
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
                        controller: finame,
                        decoration: InputDecoration(
                          hintText: "FirstName"
                        ),
                      ),
                      TextField(
                        controller: laname,
                        decoration: InputDecoration(
                          hintText: "LastName"
                        ),
                      ),
                      TextField(
                        controller: phnum,
                        decoration: InputDecoration(
                          hintText: "Mobile Number"
                        ),
                      ),
                      TextField(
                        controller: emaail,
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
                  onPressed: (){
                    updateUser();
                  },
                   child: Text("Update")),
              )
            ],
          ),
        ),
      ),
    );
  }

   void showErrorMessage(String message){
    MotionToast.error(
      description: Text(message)).show(context);
  }
  void showSuccessMessage(String message){
    MotionToast.success(description: Text(message)).show(context);
  }



  void updateUser()async{
    final fname1=finame.text;
    final lname1=laname.text;
    final email1=emaail.text;
    final phone1=phnum.text;
   

     final formdat=FormData.fromMap({
        'firstname':fname1,
        'lastname':lname1,
        'email':email1,
        'telephone':phone1,
        'key':"koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc"
        
      });
     

      final result= await Apiclass().updateUserApi(formdat);


      if(result!=null){
        if(result.status=="success"){
          showSuccessMessage(result.message!);
        }else{
          showErrorMessage(result.message!);
        }
      }
    
  }
}