import 'package:flutter/material.dart';
import 'package:getflutter/components/rating/gf_rating.dart';
import 'package:doorstepf/Config/Destinations.dart';
class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}
FeedBackConstrains constrains = FeedBackConstrains();
WalletConstrains walletConstrains = WalletConstrains();
class _FeedBackState extends State<FeedBack> {
  TextEditingController messageController = TextEditingController();
  double raiting = 1;
  double textRaiting = 1.0;
  ratingText(){
    if(raiting == 1){
      setState(() {
        textRaiting = 1.0;
      });
    }else if(raiting == 2){
      setState(() {
        textRaiting = 2.0;
      });
    }else if(raiting == 3){
      textRaiting = 3.0;
    }else if(raiting == 4){
      textRaiting = 4.0;
    }else{
      textRaiting = 5.0;
    }
  }
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
        title: Text("FeedBack",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("How was your overall experience?",style: constrains.toplebelStyle,),
                SizedBox(height: 10,),
                Text("It will help us to serve you better"),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFRating(
                      value: raiting,
                      color: Colors.black,
                      borderColor: Colors.black,
                      onChanged: (val){
                        setState(() {
                          raiting = val;
                          ratingText();
                        });
                      },
                    ),
                    SizedBox(width: 10,),
                    Text("${textRaiting}",style: TextStyle(fontSize: 20),)
                  ],
                ),
                SizedBox(height: 10,),
                Text("It's Excellent",style: constrains.exelent,),
                SizedBox(height: 20,),
                Text("Your Message (optional)",style: constrains.message,),
                SizedBox(height: 10,),
                TextField(
                  maxLines: 10,
                  controller: messageController,
                  decoration: InputDecoration(
                      hintText: "Please specify in detail",
                      border: OutlineInputBorder()
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
                  child: Text("Submit",style: walletConstrains.button,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
