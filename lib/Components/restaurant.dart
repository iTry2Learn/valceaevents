class Restaurant {
  final String id;
  final String nume;
  final String coverImage;
  final String descriere;
  final List<String> taguri;
  final List<String> imaginiCarousel;
  final List<String> meniu;
  final String rating;

  Restaurant({
    required this.id,
    required this.nume,
    required this.coverImage,
    required this.descriere,
    required this.taguri,
    required this.imaginiCarousel,
    required this.meniu,
    required this.rating,
  });
}
