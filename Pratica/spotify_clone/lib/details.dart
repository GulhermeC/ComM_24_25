import 'song_model.dart';

List<Song> getRecommended() {
  List<Song> recs = [];

  //1
  recs.add(Song(
    imageUrl: "assets/livingthings.jpg",
    artist: "Linking Park",
    title: "Living Things",
  ));

  //2
  recs.add(Song(
    imageUrl: "assets/satho.jfif",
    artist: "Arijit Singh",
    title: "Agar tum Sath Ho",
  ));

  //3
  recs.add(Song(
    imageUrl: "assets/stero.jfif",
    artist: "Gym Class Heroes",
    title: "My Heart is Stereo",
  ));

  //4
  recs.add(Song(
    imageUrl: "assets/sulthan.jfif",
    artist: "Vivek-Mervin",
    title: "Jai Sulthan - from Sulthan",
  ));

  //5
  recs.add(Song(
    imageUrl: "assets/zaalima.jfif",
    artist: "Arijit Singh",
    title: "Zaalima - from Raees",
  ));

  //6
  recs.add(Song(
    imageUrl: "assets/kathadi1.jpg",
    artist: "Hari Mahadevan",
    title: "So Baby  -  From Doctor",
  ));

  return recs;
}

List<Song> getMade(){

  List<Song> mads = [];

  //1
  mads.add(Song(
    imageUrl: "assets/weekly.jfif",
    artist: "Weekly Discover",
    title: "Songs Based on ur playList",
  ));

  //2
  mads.add(Song(
    imageUrl: "assets/mix.jfif",
    artist: "Your daily Mix 3",
    title: "New Songs",
  ));

  //3
  mads.add(Song(
    imageUrl: "assets/onrepeat.jfif",
    artist: "On Repeat",
    title: "Good Music",
  ));

  //4
  mads.add(Song(
    imageUrl: "assets/top.jfif",
    artist: "On Repeat",
    title: "Infinite Music",
  ));

  //5
  mads.add(Song(
    imageUrl: "assets/mix.jfif",
    artist: "Daily Mix3",
    title: "Good Mood",
  ));

  //1
  mads.add(Song(
    imageUrl: "assets/top.jfif",
    artist: "New Hits",
    title: "Your Top 20 Musics",
  ));

  return mads;
}