import 'package:flutter/material.dart';
import 'package:doorstepf/Config/Destinations.dart';
class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}
WalletConstrains walletConstrains = WalletConstrains();
class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.maybePop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        title: Text("Add Address",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText:"House No"
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText:"Street No"
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:"Area"
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:"City"
                  ),
                ),
                SizedBox(height: 10,),
                MaterialButton(
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: Colors.black)
                  ),
                  minWidth: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  height: 50,
                  child: Text("Continue",style: walletConstrains.button,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}