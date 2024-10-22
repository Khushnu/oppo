class OfferModel{
  final String image; 
  final String title;

  OfferModel({required this.title, required this.image});
}

List<OfferModel> offerList = [
OfferModel(title: "2 Bed", image: "assets/travel/bedh.png"),
OfferModel(title: "Dinner", image: "assets/travel/dinner.png"),
OfferModel(title: "Hot Tub", image: "assets/travel/tub.png"),
OfferModel(title: "1 Ac", image: "assets/travel/ac.png"),

];