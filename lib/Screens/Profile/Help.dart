import 'package:flutter/material.dart';
class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            Navigator.maybePop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        title: Text("Help",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: Center(child: Text("Help Screen"),),
    );
  }
}
