import 'dart:async';

import 'package:flutter/material.dart';

import 'views/home.dart';
import 'views/library.dart';
import 'views/premius.dart';
import 'views/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}

class Splashscreen extends StatefulWidget {
  @override
  SplashscreenState createState() => SplashscreenState();
}

class SplashscreenState extends State<Splashscreen> {

  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(seconds: 10), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black87,
            Colors.black,
            Colors.black54
          ]
        )
      ),
      child: Center(
        child: Image.asset('assets/logo.png',height: 100,width: 100,),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {

  bool flag1 = false;
  bool flag2 = false;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(_selectedIndex == 0 || _selectedIndex == 1 ){
        flag1 = false;
        flag2 = false;
      }
      if(_selectedIndex == 2 ){
        flag2 = false;
        flag1 = true;
      }
      if(_selectedIndex == 3){
        flag2 = true;
        flag1 = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> widgetOptions = <Widget>
    [
      HOOme(),
      Search(),
      Library(),
      Premium(),
    ];
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15
          ),
          unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15
          ),
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.home)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/lib.png',height:25,width: 25,color: flag1 ? Colors.amber[800]: Colors.white,),
              ),
              label: 'Your Library',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/logobl.png",color: flag2 ? Colors.amber[800]: Colors.white,height: 30,width: 25,),
              ),
              label: 'Premium',
            ),
          ],
        ),
        body: widgetOptions[_selectedIndex],
      ),
    );
  }
}