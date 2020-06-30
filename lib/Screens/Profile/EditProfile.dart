import 'dart:io';
import 'package:doorstepf/Screens/Profile/AddAddress.dart';
import 'package:doorstepf/Screens/Profile/PickImage.dart';
import 'package:doorstepf/Config/Destinations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}
ProfileDestinations profileDestinations = ProfileDestinations();
class _EditProfileState extends State<EditProfile> {
  String image;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  var phone;
  TextEditingController address = TextEditingController();

  void insertUser() {
    var url = "http://192.168.0.102/API/customerUsers.php";
    http.post(url,
      headers: {
       'Accept': 'application/json'
      },
      body: ({
      "name":name,
      "phone":phone,
      "email":email,
      "address":address,
      "image":image,
    }));
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Wrap(
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40)
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0,left: 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Card(
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.only(top:10,right: 12.0,left: 12.0),
                          child: ListView(
                            children: <Widget>[
                              TextField(
                                controller: name,
                                decoration: InputDecoration(
                                    hintText: "Name"
                                ),
                              ),
                              TextField(
                                onChanged: (val){
                                  phone = val;
                                },
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    hintText: "Phone"
                                ),
                              ),
                              TextField(
                                controller: email,
                                decoration: InputDecoration(
                                    hintText: "Email"
                                ),
                              ),
                              TextField(
                                controller: address,
                                decoration: InputDecoration(
                                    hintText: "Address"
                                ),
                              ),
                              SizedBox(height: 10,),
                              OutlineButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => AddAddress()
                                  ));
                                },
                                child: Text("Add Address"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(right:20.0,left: 20.0,top: 10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Expanded(
                         child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(),
                             borderRadius: BorderRadius.circular(100)
                           ),
                           child: MaterialButton(
                             child: Icon(Icons.arrow_back,size: 40,),
                             onPressed: (){
                               Navigator.maybePop(context);
                             },
                           ),
                         ),
                       ),
                       SizedBox(
                         width: 10,
                       ),
                       Expanded(
                         child: MaterialButton(
                           shape: StadiumBorder(),
                           onPressed: (){
                             insertUser();
//                            Navigator.maybePop(context);
                           },
                           height: 50,
                           color: Colors.black,
                           child: Text("Save",style: profileDestinations.whiteText,),
                         ),
                       )
                     ],
                   ),
                 ),
                ],
              ),
              Align(
                alignment: Alignment(0.0,-0.5),
                child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            width: 2
                          )
                       ),
                      child: IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => PickImage()
                        ));
                      },icon: (Icon(Icons.add_a_photo,size: 60,)),),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
