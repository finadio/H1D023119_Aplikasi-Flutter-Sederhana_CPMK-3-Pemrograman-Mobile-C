class Event {
  final int id;
  final String title;
  final String date;
  final String time;
  final String location;
  final String description;
  final String image;
  final String category;
  final int participants;

  Event({
    required this.id,
    required this.title,
    required this.date,
    required this.time,
    required this.location,
    required this.description,
    required this.image,
    required this.category,
    required this.participants,
  });
}
