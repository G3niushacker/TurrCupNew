import 'package:doorstepf/Config/Destinations.dart';
import 'package:flutter/material.dart';
class CreditCard extends StatefulWidget {
  @override
  _CreditCardState createState() => _CreditCardState();
}
WalletConstrains constrains = WalletConstrains();
GeneralDetailDestination destination = GeneralDetailDestination();
class _CreditCardState extends State<CreditCard> {
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
        title: Text("Cradit Card",style: destination.appBarTitle,),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset("images/craditCard.png",height: 220,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Adding Credit or Debit Card",style: constrains.headingsTextStyle,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,bottom: 8.0,left: 15,right: 8.0),
            child: Text("1. To add your debit or credit card you simply click down of this article add credit card button or you can also also click you wallet secian add credit card button.",style: destination.lebelStyle,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:5.0,bottom: 8.0,left: 15,right: 8.0),
            child: Text("2. After come on add credit card screen click please fill your details",style: destination.lebelStyle,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:2.0,bottom: 8.0,left: 20,right: 8.0),
            child: Text("1. Your Card Number",style: destination.lebelStyle,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:2.0,bottom: 8.0,left: 20,right: 8.0),
            child: Text("2. Credit card name",style: destination.lebelStyle,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:2.0,bottom: 8.0,left: 20,right: 8.0),
            child: Text("3. Expiry date month and year",style: destination.lebelStyle,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:5.0,bottom: 8.0,left: 20,right: 8.0),
            child: Text("4. Last is add 3 digit CVC number that you can see back side of card",style: destination.lebelStyle,),
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
              onPressed: (){},
              height: 50,
              child: Text("Add Card",style: constrains.button,),
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
