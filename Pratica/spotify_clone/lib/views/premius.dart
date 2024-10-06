import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Premium extends StatefulWidget {
  @override
  PremiumState createState() => PremiumState();
}

class PremiumState extends State<Premium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 85, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Get more out of your music with Premium",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  "Ad-Free Music, Offline Playback, Unlimited Skips and more!",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          simp(),
          SizedBox(height: 30),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.blueAccent],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              "Get Premium",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Terms and Conditions Apply",
            style: TextStyle(color: Colors.white54, fontSize: 14),
          ),
          SizedBox(height: 52),
          Container(
            height: 70,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white24,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Spotify Free",
                  style: TextStyle(
                    color: Colors.white, // Alterado para branco
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  "Current Plan",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }

  CarouselSlider simp() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150.0,
        initialPage: 0,
        enableInfiniteScroll: false,
      ),
      items: ["Ad Breaks", "Streaming Only", "Listen Alone"].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return SizedBox(
              height: 150,
              width: 300,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Free",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            i,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Premium",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            _getPremiumBenefit(i),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }

  String _getPremiumBenefit(String freeFeature) {
    switch (freeFeature) {
      case "Ad Breaks":
        return "Ad-Free Music";
      case "Streaming Only":
        return "Offline Playback";
      case "Listen Alone":
        return "Group Sessions";
      default:
        return "Premium Feature";
    }
  }
}
