// ignore_for_file: prefer_typing_uninitialized_variables



class Food{
  Food({
    required this.foodId,
    required this.foodDiscription,
    required this.foodName,
    required this.foodPrice,
    required this.foodImage,
    required this.foodCount,
  });
  var foodId;
  final String foodName;
  final String foodDiscription;
  int foodPrice;
  final String foodImage;
  int foodCount;

}