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
                          "8 tracks, 32 minutes",
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
                  children: [
                    Slidable(
                      key: const ValueKey(0),
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
                        title: Text("Track 1",
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text("3:45",
                            style: TextStyle(color: Colors.white54)),
                      ),
                    ),
                    Slidable(
                      key: const ValueKey(1),
                      endActionPane: ActionPane(
                        motion: const StretchMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) {},
                            backgroundColor:
                                Colors.green.shade900,
                            foregroundColor: Colors.white,
                            icon: Icons.download,
                          ),
                          SlidableAction(
                            onPressed: (context) {},
                            backgroundColor:
                                Colors.red.shade900,
                            foregroundColor: Colors.white,
                            icon: Icons.favorite_border,
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Icon(Icons.music_note, color: Colors.white),
                        title: Text("Track 2",
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text("4:05",
                            style: TextStyle(color: Colors.white54)),
                      ),
                    ),
                    Slidable(
                      key: const ValueKey(2),
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
                        title: Text("Track 3",
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text("3:15",
                            style: TextStyle(color: Colors.white54)),
                      ),
                    ),
                    Slidable(
                      key: const ValueKey(3),
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
                        title: Text("Track 4",
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text("4:00",
                            style: TextStyle(color: Colors.white54)),
                      ),
                    ),
                    Slidable(
                      key: const ValueKey(4),
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
                        title: Text("Track 5",
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text("5:10",
                            style: TextStyle(color: Colors.white54)),
                      ),
                    ),
                    Slidable(
                      key: const ValueKey(5),
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
                        title: Text("Track 6",
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text("3:50",
                            style: TextStyle(color: Colors.white54)),
                      ),
                    ),
                    Slidable(
                      key: const ValueKey(6),
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
                        title: Text("Track 7",
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text("4:25",
                            style: TextStyle(color: Colors.white54)),
                      ),
                    ),
                    Slidable(
                      key: const ValueKey(7),
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
                        title: Text("Track 8",
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text("3:35",
                            style: TextStyle(color: Colors.white54)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
