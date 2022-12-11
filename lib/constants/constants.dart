import 'package:restaurants/models/food_model.dart';
import 'package:restaurants/models/hotel_model.dart';

class Constants {
  static List<Hotel> res = [
    Hotel(
      hotelLocation: 'Malappuram',
      hotelMobileNumber: 98989898,
      hotelName: 'Airlines',
      hotelRating: 4.4,
      hotelImage: 'assets/images/airlines.png',
      foodList: [
        Food(
          foodId: 123,
          foodDiscription: 'foodDiscription',
          foodName: 'biriyani',
          foodPrice: 180,
        ),
        Food(
          foodId: 67676,
          foodDiscription: "foodDiscription",
          foodName: 'Mandi',
          foodPrice: 180,
        ),
        Food(
          foodId: 333,
          foodDiscription: "foodDiscription",
          foodName: "chicken Biriyani",
          foodPrice: 190,
        ),
      ],
    ),
    Hotel(
      hotelLocation: 'Calicut',
      hotelMobileNumber: 12121212,
      hotelName: 'sagar',
      hotelRating: 4.4,
      hotelImage: 'assets/images/sagar.jpg',
      foodList: [
        Food(
          foodId: 1244,
          foodDiscription: "foodDiscription",
          foodName: 'chicken Biriyani',
          foodPrice: 130,
        ),
        Food(
          foodId: 344,
          foodDiscription: 'foodDiscription',
          foodName: 'beef Biriyani',
          foodPrice: 190,
        ),
      ],
    ),
    Hotel(
      hotelLocation: 'Calicut',
      hotelMobileNumber: 12121212,
      hotelName: 'Rahmath',
      hotelRating: 5,
      hotelImage: 'assets/images/rahmath.jpg',
      foodList: [
        Food(
          foodId: 555,
          foodDiscription: 'foodDiscription',
          foodName: 'Beef Biriyani',
          foodPrice: 190,
        ),
        Food(
          foodId: 556,
          foodDiscription: 'foodDiscription',
          foodName: 'chicken Biriyani',
          foodPrice: 200,
        ),
      ],
    ),
    Hotel(
      hotelLocation: 'Calicut',
      hotelMobileNumber: 12121212,
      hotelName: 'Kuttichira Biriyani',
      hotelRating: 1.5,
      hotelImage: 'assets/images/kbc.png',
      foodList: [
        Food(
          foodId: 334,
          foodDiscription: 'foodDiscription',
          foodName: 'chicken biriyani',
          foodPrice: 200,
        ),
        Food(
          foodId: 1212,
          foodDiscription: "foodDiscription",
          foodName: 'beef Biriyani',
          foodPrice: 200,
        ),
      ],
    ),
    Hotel(
      hotelLocation: 'Malappuram',
      hotelMobileNumber: 12121212,
      hotelName: 'Hotel Delicia',
      hotelRating: 2.5,
      hotelImage: 'assets/images/Hotel-Delicia.png',
      foodList: [
        Food(
          foodId: 334,
          foodDiscription: 'foodDiscription',
          foodName: 'chicken biriyani',
          foodPrice: 200,
        ),
        Food(
          foodId: 1212,
          foodDiscription: "foodDiscription",
          foodName: 'beef Biriyani',
          foodPrice: 200,
        ),
      ],
    ),
    Hotel(
      hotelLocation: 'Malappuram',
      hotelMobileNumber: 12121212,
      hotelName: 'Sulthan palace',
      hotelRating: 3,
      hotelImage: 'assets/images/sulthan-palace.png',
      foodList: [
        Food(
          foodId: 334,
          foodDiscription: 'foodDiscription',
          foodName: 'chicken biriyani',
          foodPrice: 200,
        ),
        Food(
          foodId: 1212,
          foodDiscription: "foodDiscription",
          foodName: 'beef Biriyani',
          foodPrice: 200,
        ),
      ],
    ),
  ];
}
