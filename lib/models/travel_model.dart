class Travel{
  final String location;
  final String travelCategory;
  final String locationImage;

  Travel({
    required this.location,
    required this.travelCategory,
    required this.locationImage,
});
}

final List<Travel> travel = [
  Travel(
    location: 'London',
    travelCategory: 'Hotel',
    locationImage: 'assets/images/london.jpg',
  ),
  Travel(
      location: 'Amsterdam',
      travelCategory: 'Attraction',
      locationImage: 'assets/images/amsterdam.jpg'
  ),
  Travel(
      location: 'Paris',
      travelCategory: 'Places',
      locationImage: 'assets/images/paris.jpg'
  ),
  Travel(
      location: 'New York',
      travelCategory: 'Tourism',
      locationImage: 'assets/images/newyork.jpg'
  ),
  Travel(
      location: 'Singapore',
      travelCategory: 'Attraction',
      locationImage: 'assets/images/singapore.jpg'
  ),
  Travel(
      location: 'South Korea',
      travelCategory: 'SightSeeing',
      locationImage: 'assets/images/sk.jpg'
  ),

];