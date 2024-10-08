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
    imageUrl: "assets/samstown.jpeg",
    artist: "The Killers",
    title: "Sam's Town",
  ));

  //3
  recs.add(Song(
    imageUrl: "assets/demondays.jpg",
    artist: "Gorillaz",
    title: "Demon Days",
  ));

  //4
  recs.add(Song(
    imageUrl: "assets/rstein.jpeg",
    artist: "Rammstein",
    title: "Rammstein",
  ));

  //5
  recs.add(Song(
    imageUrl: "assets/fotd.jpeg",
    artist: "Iron Maiden",
    title: "Fear of the Dark",
  ));

  //6
  recs.add(Song(
    imageUrl: "assets/turnstile.jpg",
    artist: "Turnstile",
    title: "GLOW ON",
  ));

  return recs;
}

List<Song> getMade() {
  List<Song> mads = [];

  //1
  mads.add(Song(
    imageUrl: "assets/weekly.jfif",
    artist: "Your weekly mixtape of fresh music",
    title: "Discover Weekly",
  ));

  //2
  mads.add(Song(
    imageUrl: "assets/onrepeat.jfif",
    artist: "On Repeat",
    title: "Good Music",
  ));

  //3
  mads.add(Song(
    imageUrl: "assets/top.jfif",
    artist: "Infinite Music",
    title: "Your Top Songs",
  ));

  return mads;
}

List<Song> getDailyMixes() {
  List<Song> dailyMixes = [];

  //1
  dailyMixes.add(Song(
    imageUrl: "assets/mix.jfif",
    artist: "Based on your preferences",
    title: "Daily Mix 3",
  ));

  //2
  dailyMixes.add(Song(
    imageUrl: "assets/dailymix5.jpg",
    artist: "Based on your preferences",
    title: "Daily Mix 5",
  ));

  //3
  dailyMixes.add(Song(
    imageUrl: "assets/dailymix6.jpg",
    artist: "Based on your preferences",
    title: "Daily Mix 6",
  ));

  return dailyMixes;
}
