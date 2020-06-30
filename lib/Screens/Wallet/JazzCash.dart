import 'package:doorstepf/Config/Destinations.dart';
import 'package:doorstepf/Screens/Wallet/AddPayment.dart';
import 'package:doorstepf/Screens/Wallet/WithdrawPayment.dart';
import 'package:flutter/material.dart';
class JazzCash extends StatefulWidget {
  @override
  _JazzCashState createState() => _JazzCashState();
}
WalletConstrains constrains = WalletConstrains();
GeneralDetailDestination destination = GeneralDetailDestination();
class _JazzCashState extends State<JazzCash> {
  bool jazcahsClicked = false;
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
        title: Text("JazzCash",style: destination.appBarTitle,),
      ),
      body: ListView(
          children: <Widget>[
          Container(
          height: 220,
          width: MediaQuery.of(context).size.width,
          child: Image.asset("images/jazzcash.jpg",fit: BoxFit.fill,)),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Add Or Withdraw payment to JazzCash Account",style: constrains.headingsTextStyle,),
      ),
      Padding(
        padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 15,right: 8.0),
        child: Text("1. To add your jazzcash you simply click down of this article add payment / Withdraw payment buttons or you can also also click you wallet secian Add Payment / Withdraw payment buttons.",style: destination.lebelStyle,),
      ),
      Padding(
        padding: const EdgeInsets.only(top:5.0,bottom: 8.0,left: 15,right: 8.0),
        child: Text("2. After come on add payment / withdraw payment screen Click jazzcash button please provide your jazzcash phone number",style: destination.lebelStyle,),
      ),
      Padding(
        padding: const EdgeInsets.only(top:5.0,bottom: 8.0,left: 15,right: 8.0),
        child: Text("3. And Click Confirm button",style: destination.lebelStyle,),
      ),
      Padding(
        padding: const EdgeInsets.only(top:5.0,bottom: 8.0,left: 15,right: 8.0),
        child: Text("4. Congrates! your debit credit card has added to your wallet account now you can add payment or withdraw payment to your credit debit card",style: destination.lebelStyle,),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Note:",style: constrains.headingsTextStyle,),
      ),
      Padding(
        padding: const EdgeInsets.only(top:5.0,bottom: 8.0,left: 15,right: 8.0),
        child: Text("You can't delete or change your credit card after you have added.",style: destination.lebelStyle,),
      ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                shape: StadiumBorder(),
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => AddPayment()
                  ));
                },
                height: 50,
                minWidth: MediaQuery.of(context).size.width,
                color: Colors.red,
                child: Text("Add Payment",style: constrains.button,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                shape: StadiumBorder(),
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => WithdrawPayment()
                  ));
                },
                height: 50,
                minWidth: MediaQuery.of(context).size.width,
                color: Colors.red,
                child: Text("Withdraw",style: constrains.button,),
              ),
            ),
     ]
    )
    );
  }
}
