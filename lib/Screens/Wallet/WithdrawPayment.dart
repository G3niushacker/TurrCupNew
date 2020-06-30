import 'package:doorstepf/Config/Destinations.dart';
import 'package:flutter/material.dart';
class WithdrawPayment extends StatefulWidget {
  @override
  _WithdrawPaymentState createState() => _WithdrawPaymentState();
}
WalletConstrains constrains = WalletConstrains();
GeneralDetailDestination destination = GeneralDetailDestination();
class _WithdrawPaymentState extends State<WithdrawPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          onPressed: (){
            Navigator.maybePop(context);
          },
        ),
        title: Text("WithDraw Payment",style: destination.appBarTitle,),
      ),
    );
  }
}
