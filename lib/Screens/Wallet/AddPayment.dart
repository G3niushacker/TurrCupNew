import 'package:doorstepf/Config/Destinations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AddPayment extends StatefulWidget {
  @override
  _AddPaymentState createState() => _AddPaymentState();
}
WalletConstrains constrains = WalletConstrains();
GeneralDetailDestination destination = GeneralDetailDestination();
class _AddPaymentState extends State<AddPayment> {
  bool jazcahsClicked = false;
  bool easypaisaClicked = false;
  bool creditcardClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: (){
            Navigator.maybePop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: Text("Add Payment",style: destination.appBarTitle,),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              shape: StadiumBorder(),
              onPressed: (){
                setState(() {
                  jazcahsClicked = true;
                });
              },
              height: 50,
              minWidth: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: Text("JazzCash",style: constrains.button,),
            ),
          ),
          Container(
            child: jazcahsClicked ? Column(
              children: <Widget>[
                Text("Enter JazzCash Number"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "e.g 03012345678",
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  shape: StadiumBorder(),
                  child: Text("Add Payment",style: TextStyle(color: Colors.white),),
                )
              ],
            ): Container()
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              shape: StadiumBorder(),
              onPressed: (){
                setState(() {
                  easypaisaClicked = true;
                });
              },
              height: 50,
              minWidth: MediaQuery.of(context).size.width,
              color: Colors.green,
              child: Text("EasyPaisa",style: constrains.button,),
            ),
          ),
          Container(
              child: easypaisaClicked ? Column(
                children: <Widget>[
                  Text("Enter EasyPaisa Number"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "e.g 03456789000",
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){},
                    color: Colors.green,
                    shape: StadiumBorder(),
                    child: Text("Add Payment",style: TextStyle(color: Colors.white),),
                  )
                ],
              ): Container()
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              shape: StadiumBorder(),
              onPressed: (){
                setState(() {
                  creditcardClicked = true;
                });
              },
              height: 50,
              minWidth: MediaQuery.of(context).size.width,
              color: Colors.orangeAccent,
              child: Text("Credit Card",style: constrains.button,),
            ),
          ),
          Container(
              child: creditcardClicked ? Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText:"Card Number"
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText:"Card Name"
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText:"Month"
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText:"Year"
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText:"CVC"
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      onPressed: (){},
                      minWidth: MediaQuery.of(context).size.width,
                      height: 50,
                      color: Colors.orangeAccent,
                      shape: StadiumBorder(),
                      child: Text("Check Out",style: constrains.button,),
                    ),
                  )
                ],
              ): Container()
          ),
        ],
      ),
    );
  }
}
