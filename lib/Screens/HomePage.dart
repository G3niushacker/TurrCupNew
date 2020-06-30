import 'package:doorstepf/Config/BottomNavDestination.dart';
import 'package:doorstepf/Config/Destinations.dart';
import 'package:doorstepf/Screens/Bookings/Bookings.dart';
import 'package:doorstepf/Screens/HomeScreen/HomeScreen.dart';
import 'package:doorstepf/Screens/Profile/Profile.dart';
import 'package:doorstepf/Screens/Wallet/Wallet.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
BottomNavBarDestinations bottomdestinations = BottomNavBarDestinations();
class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final allScreensDestination = [
    HomeScreen(),
    Bookings(),
    Profile(),
    Wallet()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: allScreensDestination,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.black),
        selectedIconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.white,
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: allDestination.map((Destination destination){
          return BottomNavigationBarItem(
            icon : Icon(destination.icon,),
            backgroundColor: Colors.black,
            title: Text(destination.title)
          );
        }).toList()
      ),
    );
  }
}