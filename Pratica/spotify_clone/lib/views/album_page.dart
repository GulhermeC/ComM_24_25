import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class AlbumPage extends StatefulWidget {
  final String albumImageUrl;
  final String albumTitle;
  final String albumArtist;

  const AlbumPage({
    required this.albumImageUrl,
    required this.albumTitle,
    required this.albumArtist,
  });

  @override
  AlbumPageState createState() => AlbumPageState();
}

class AlbumPageState extends State<AlbumPage> {
  final List<Map<String, String>> tracks = [
    {"title": "Lost in the Echo", "duration": "3:25"},
    {"title": "In My Remains", "duration": "3:21"},
    {"title": "Burn It Down", "duration": "3:50"},
    {"title": "Lies Greed Misery", "duration": "2:27"},
    {"title": "I'll Be Gone", "duration": "3:31"},
    {"title": "Castle of Glass", "duration": "3:25"},
    {"title": "Victimized", "duration": "1:51"},
    {"title": "Roads Untraveled", "duration": "3:50"},
    {"title": "Skin to Bone", "duration": "2:48"},
    {"title": "Until It Breaks", "duration": "3:43"},
    {"title": "Tinfoil", "duration": "1:12"},
    {"title": "Powerless", "duration": "3:44"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Colors.green.shade800,
              Colors.black,
              Colors.black,
              Colors.black,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.download_outlined, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
              // Album Image
              Center(
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.albumImageUrl),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Album Title
              Center(
                child: Text(
                  widget.albumTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Artist Name and Follow Button
              Center(
                child: Column(
                  children: [
                    Text(
                      widget.albumArtist,
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white24,
                        shape: StadiumBorder(),
                      ),
                      child: Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // Tracks title, Shuffle and Play Button, and album details
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tracks",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "12 tracks, 37 minutes",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.add, color: Colors.white),
                          onPressed: () {},
                          iconSize: 25,
                        ),
                        IconButton(
                          icon: Icon(Icons.shuffle, color: Colors.white),
                          onPressed: () {},
                          iconSize: 25,
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent[400],
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: tracks.map((track) {
                    return Slidable(
                      key: ValueKey(track["title"]),
                      endActionPane: ActionPane(
                        motion: const StretchMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) {},
                            backgroundColor: Colors.green.shade900,
                            foregroundColor: Colors.white,
                            icon: Icons.download,
                          ),
                          SlidableAction(
                            onPressed: (context) {},
                            backgroundColor: Colors.red.shade900,
                            foregroundColor: Colors.white,
                            icon: Icons.favorite_border,
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Icon(Icons.music_note, color: Colors.white),
                        title: Text(track["title"]!,
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text(track["duration"]!,
                            style: TextStyle(color: Colors.white54)),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
