import 'package:doorstepf/Config/Destinations.dart';
import 'package:doorstepf/Models/HomeScreenModels/SubServicesList.dart';
import 'package:doorstepf/Screens/HomeScreen/MapLocation.dart';
import 'package:doorstepf/Screens/HomeScreen/ServiceCartScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doorstepf/Models/HomeScreenModels/TopCardView.dart';
import 'package:doorstepf/Models/HomeScreenModels/ServiceCatgories.dart';
import 'package:doorstepf/Services/HomeScreenServices.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:geolocator/geolocator.dart';
import 'package:doorstepf/Screens/Profile/AddAddress.dart';
import 'package:carousel_pro/carousel_pro.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
HomeScreenDestinations destinations = HomeScreenDestinations();
HomeScreenServices homeScreenServices = HomeScreenServices();
WalletConstrains constrains = WalletConstrains();
GeneralDetailDestination destination = GeneralDetailDestination();
class _HomeScreenState extends State<HomeScreen> {

  List<TopCardView> topCardView;
  List<ServiceCatgories> serviceCatgories;
  List<SubServicesList> subServiceList;
  String locationLatLong = "";

  getCurrentLocation() async {
    final position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);
    setState(() {
      locationLatLong = "${position.latitude},${position.longitude}";
    });
  }
  @override
  void initState() {
    super.initState();
    print(locationLatLong);
    getCurrentLocation();
    homeScreenServices.getTopCardView().then((topcardview) {
     setState(() {
       topCardView = topcardview;
     });
    });
    homeScreenServices.getServiceCatgories().then((servicecatgories) {
      setState(() {
        serviceCatgories = servicecatgories;
      });
    });
    homeScreenServices.getSubServiceList().then((subservicelist) {
      subServiceList = subservicelist;
    });
  }

  @override
  Widget imageCoursel = Container(
    height: 150,
    child: Carousel(
      dotBgColor: Colors.transparent,
      dotColor: Colors.transparent,
      showIndicator: false,
      boxFit: BoxFit.fill,
      images: [
        AssetImage("images/plumber.jpg"),
        AssetImage("images/hair.jpg"),
        AssetImage("images/electricianlist.jpg"),
        AssetImage("images/water.jpg"),
        AssetImage("images/Doctor.jpg"),
        AssetImage("images/make.jpg"),
      ],
    ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => AddAddress()
              ));
            },
            icon: Icon(Icons.location_on,color: Colors.black,),
          )
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Home",style: destination.appBarTitle,),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black,
                ),
                child: imageCoursel,
                height: MediaQuery.of(context).size.height / 3.7,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  )
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: AnimationLimiter(
                        child: GridView.builder(
                            shrinkWrap: true,
                            itemCount: serviceCatgories.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 3,),
                            itemBuilder: (context, index){
                              ServiceCatgories servicecatgories = serviceCatgories[index];
                              return AnimationConfiguration.staggeredGrid(
                                position: index,
                                duration: const Duration(milliseconds: 375),
                                columnCount: 3,
                                child: ScaleAnimation(
                                  child: FadeInAnimation(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top:8.0,right: 8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: InkWell(
                                          onTap: (){
//                                  if(index == 0){
//                                    Navigator.push(context, MaterialPageRoute(
//                                        builder: (context) => ServiceCartScreen()
//                                    ));
//                                  }
                                          },
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                  child: Container(
                                                    height:30,
                                                    width: 60,
                                                    child: Image.network(
                                                      servicecatgories.image, ),
                                                  ), height: 100),
                                              Text(servicecatgories.title)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: subServiceList.length,
                        itemBuilder: (context, index){
                          SubServicesList subservicelist = subServiceList[index];
                          return Card(
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    leading: Container(
                                      child: Image.network(
                                        subservicelist.image,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    title: Text(subservicelist.title),
                                    subtitle: Text(subservicelist.description),
                                  ),
                                ],
                              )
                          );
                        }),
                  )
                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}
