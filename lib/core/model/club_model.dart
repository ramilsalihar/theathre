class ClubModel {
  final String title;
  final String description;
  final String schedule;
  final String contactDetails;
  final bool isActive;
  final String image;
  final List<String> headsOfClub;
  final int freeSpots;
  final int totalSpots;
  final double price;

  ClubModel({
    required this.title,
    required this.description,
    required this.schedule,
    required this.contactDetails,
    required this.isActive,
    required this.image,
    required this.headsOfClub,
    required this.freeSpots,
    required this.totalSpots,
    required this.price,
  });
}
