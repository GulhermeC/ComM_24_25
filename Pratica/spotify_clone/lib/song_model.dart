/// This class represents a song with its associated details such as 
/// the image URL, song title, and artist.
class Song {
  /// URL to the image representing the song (album cover, etc.).
  final String imageUrl;

  /// Title of the song.
  final String title;

  /// Artist or band that performed the song.
  final String artist;

  /// Constructor for the Song class, requiring all three fields.
  Song({
    required this.imageUrl,
    required this.title,
    required this.artist,
  });
}
