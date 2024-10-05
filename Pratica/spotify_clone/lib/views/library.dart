import 'package:flutter/material.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Library extends StatefulWidget {
  @override
  LibraryState createState() => LibraryState();
}

class LibraryState extends State<Library> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(125),
        child: AppBar(
          backgroundColor: Colors.black45,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        "N",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Your Library",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.search, color: Colors.white70, size: 35),
                  SizedBox(width: 20),
                  Icon(Icons.add, color: Colors.white70, size: 35),
                ],
              ),
              SizedBox(height: 50),
            ],
          ),
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(
                child: Text(
                  "Playlist",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Tab(
                child: Text(
                  "Artist",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildPlaylistTab(), // Playlist tab content
          buildArtistTab(), // Artist tab content with "Recently Played" and moved items
        ],
      ),
    );
  }

  Widget buildPlaylistTab() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20), // Gap between tabs and "Recently Played"
          buildRecentlyPlayed(),
          SizedBox(height: 15),
          buildTileList([
            tile("Liked Songs", "assets/like.jfif", "Playlist 52 Songs"),
            tile("On Repeat", "assets/onrepeat.jfif", "Playlist for u"),
            tile("Malayalam", "assets/ser6.jfif", "Malayalam List"),
            tile("Weekly Discover", "assets/weekly.jfif", "Weekly discover"),
          ]), // List of tiles (as before)
        ],
      ),
    );
  }

  Widget buildArtistTab() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20), // Gap between tabs and "Recently Played"
          buildRecentlyPlayed(),
          SizedBox(height: 15),
          buildTileList([
            tile("Jazz Classics", "assets/jazz.jfif", "The Best of Jazz"),
            tile("Pop Hits", "assets/pop.jfif", "Trending Pop Music"),
            tile("Classical Essentials", "assets/classical.jfif", "Classical Hits"),
          ]), // Moved some tiles to "Artist" tab
        ],
      ),
    );
  }

  Widget buildRecentlyPlayed() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Transform.rotate(
            angle: 90 * pi / 180,
            child: Icon(Icons.compare_arrows_sharp, color: Colors.white),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Text(
              "Recently Played",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Icon(FontAwesomeIcons.rectangleList, color: Colors.white),
        ],
      ),
    );
  }

  Widget buildTileList(List<Widget> tiles) {
    return Column(
      children: tiles,
    );
  }

  ListTile tile(String title, String imgurl, String subtit) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(imgurl),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 18, fontStyle: FontStyle.italic),
      ),
      subtitle: Text(
        subtit,
        style: TextStyle(color: Colors.white54, fontSize: 13, fontStyle: FontStyle.italic),
      ),
    );
  }
}
