class Attraction {
  final String title;
  final String location;
  final String description;
  final String image;

  Attraction({
    required this.title,
    required this.location,
    required this.description,
    required this.image,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Attraction &&
          runtimeType == other.runtimeType &&
          title == other.title;

  @override
  int get hashCode => title.hashCode;
}
