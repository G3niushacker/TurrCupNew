import 'package:doorstepf/Config/Destinations.dart';
import 'package:doorstepf/Screens/Wallet/AddPayment.dart';
import 'package:doorstepf/Screens/Wallet/CreditCard.dart';
import 'package:doorstepf/Screens/Wallet/EasyPaisa.dart';
import 'package:doorstepf/Screens/Wallet/JazzCash.dart';
import 'package:doorstepf/Screens/Wallet/WithdrawPayment.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}
WalletConstrains walletConstrains = WalletConstrains();
class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("My Wallet"),
          backgroundColor: Colors.black,
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.monetization_on,color: Colors.white,),
                    Text("Your Balnace",style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("PKR 5630",style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                ),)
              ],
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top:30.0,right: 8.0,left: 8.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Payment Methods",style: walletConstrains.headingsTextStyle,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => AddPayment()
                          ));
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.add_to_home_screen),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Add Payment"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => WithdrawPayment()
                          ));
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.exit_to_app),
                            SizedBox(
                              width: 10,
                            ),
                            Text("WithDraw Payment"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(thickness: 2,),
                      Row(
                        children: <Widget>[
                          Text("Bank Transfer",style: walletConstrains.headingsTextStyle,),
                        ],
                      ),
                      SizedBox(height: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => CreditCard()
                          ));
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.credit_card),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Credit Card"),
                          ],
                        ),
                      ),
                      Divider(thickness: 2.0,),
                      Row(
                        children: <Widget>[
                          Text("Mobile Money",style: walletConstrains.headingsTextStyle,)
                        ],
                      ),
                      SizedBox(height: 10,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => EasyPaisa()
                          ));
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.mobile_screen_share),
                            SizedBox(
                              width: 10,
                            ),
                            Text("EasyPaisa"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => JazzCash()
                          ));
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.mobile_screen_share),
                            SizedBox(
                              width: 10,
                            ),
                            Text("JazzCash"),
                          ],
                        ),
                      ),
                      Divider(thickness: 2,),
                      Text("Note",style: walletConstrains.headingsTextStyle,),
                      SizedBox(
                        height: 10,
                      ),
                      Text("* If Your Wallet Payment in Nagitive then you will add payment"),
                      Text("* If Your Wallet Payment in Positive then you will WithDraw payment"),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}