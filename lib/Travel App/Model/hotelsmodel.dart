class HotelModel {
  final String title;
  final String image;
  final String location;
  final double price;
  final String description;
  final String reviews;

  HotelModel(
      {required this.title,
      required this.image,
      required this.description,
      required this.location,
      required this.reviews,
      required this.price});
}


List<HotelModel> listHotel = [
  HotelModel(title: "Hotel Dark Diamon", 
  image: "assets/travel/travel.jpg", 
  reviews: "4.9(6.8k review)",
  description: "Dark Diamon Hotel offers modern luxury with spacious rooms, stunning views, and exceptional service. Enjoy the rooftop pool, gourmet dining, and a relaxing spa. Centrally located, it’s ideal for business travelers and tourists, with easy access to major attractions, shopping, and nightlife. Experience urban sophistication at its finest.", 
  location: "Zurich, Switzerland", price: 280),
  HotelModel(title: "Hotel Postinio Berry", 
  image: "assets/travel/hotel2.jpg", 
  reviews: "4.9(6.8k review)",
  description: "Postinio Berry Hotel combines charm and comfort in a boutique setting. With stylish rooms, personalized service, and a cozy atmosphere, it’s perfect for a relaxing getaway. Enjoy the on-site café, unwind in the lush garden, or explore nearby attractions. Whether for business or leisure, Postinio Berry offers a serene and inviting escape.", 
  location: "Paris, France", price: 480),
  HotelModel(title: "Hotel Dark Diamon", 
  image: "assets/travel/hotelbed2.jpg", 
  reviews: "4.9(6.8k review)",
  description: "Dark Diamon Hotel offers modern luxury with spacious rooms, stunning views, and exceptional service. Enjoy the rooftop pool, gourmet dining, and a relaxing spa. Centrally located, it’s ideal for business travelers and tourists, with easy access to major attractions, shopping, and nightlife. Experience urban sophistication at its finest.", 
  location: "Paris, France", price: 480),

];