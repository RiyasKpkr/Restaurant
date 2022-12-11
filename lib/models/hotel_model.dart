import 'package:restaurants/models/food_model.dart';

class Hotel{

  Hotel({
    required this.foodList,
    required this.hotelLocation,
    required this.hotelMobileNumber,
    required this.hotelName,
    required this.hotelRating,
    required this.hotelImage,
  });

  final String hotelName;
  final String hotelLocation;
  double hotelRating;
  int hotelMobileNumber;
  List<Food?> foodList;
  final String hotelImage;

}