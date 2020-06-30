import 'package:doorstepf/Config/Destinations.dart';
import 'package:doorstepf/Screens/Bookings/Pending.dart';
import 'package:flutter/material.dart';
import 'package:doorstepf/Screens/Bookings/Current.dart';
import 'package:doorstepf/Screens/Bookings/Previous.dart';

class Bookings extends StatefulWidget {
  @override
  _BookingsState createState() => _BookingsState();
}

BookingsDestinations destinations = BookingsDestinations();
class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("My Bookings",style: destinations.appbar,),
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: <Widget>[
              Tab(
                child: Text("Current",style: destinations.tabs,),
              ),
              Tab(
                child: Text("Pending",style: destinations.tabs,),
              ),
              Tab(
                child: Text("Previous",style: destinations.tabs,),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Current(),
            Pending(),
            Previous()
          ],
        ),
      ),
    );
  }
}