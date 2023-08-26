class ItineraryPlaceModel {
  ItineraryPlaceModel({
    required this.name,
    required this.supplier,
    required this.title,
    required this.perex,
    required this.url,
    required this.rating,
    required this.reviewCount,
    required this.photoUrl,
    required this.price,
    required this.originalPrice,
    required this.duration,
    required this.minDuration,
    required this.maxDuration,
    required this.flags,
    required this.tags,
    required this.latitude,
    required this.longitude,
  });

  final String name;
  final String supplier;
  final String title;
  final String perex;
  final String url;
  final String photoUrl;
  final String duration;

  final int rating;
  final int reviewCount;
  final int price;
  final int originalPrice;
  final int minDuration;
  final int maxDuration;
  final double latitude;
  final double longitude;

  final List<String> flags;
  final List<String> tags;
}
