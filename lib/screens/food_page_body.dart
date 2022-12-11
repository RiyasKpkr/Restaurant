import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:parallax_image_ns/parallax_image.dart';
import 'package:restaurants/constants/constants.dart';
import 'package:restaurants/widgets/icon_and_text_widget.dart';
import 'package:restaurants/widgets/text_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

PageController pageController = PageController(viewportFraction: 0.85);

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          // color: Colors.amber,
          child: PageView.builder(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: Constants.res.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: 220,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: index.isEven ? Colors.amber : Colors.blue,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: ParallaxImage(
                        image: ExactAssetImage(
                          Constants.res[index].hotelImage,
                        ),
                        extent: 320,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 120,
                      margin: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 7,
                              blurRadius: 7,
                              offset: const Offset(0, 2),
                            )
                          ]),
                      child: Container(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextWidget(
                                text: Constants.res[index].hotelName
                                    .toUpperCase()),
                            Row(
                              children: [
                                RatingBarIndicator(
                                  rating: Constants.res[index].hotelRating,
                                  itemBuilder: (context, index) {
                                    return const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 15,
                                    );
                                  },
                                  itemCount: 5,
                                  direction: Axis.horizontal,
                                  itemSize: 15,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                TextWidget(
                                  text: '${Constants.res[index].hotelRating}',
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                TextWidget(
                                  text: '1231',
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                TextWidget(
                                  text: 'Comments.',
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconTextWidget(
                                  icon: Icons.circle_sharp,
                                  iconColor: Colors.yellow,
                                  iconSize: 15,
                                  text: 'Normal',
                                  fontSize: 15,
                                  textColor: Colors.grey,
                                ),
                                IconTextWidget(
                                  icon: Icons.location_on_rounded,
                                  iconColor: Colors.cyan,
                                  iconSize: 15,
                                  text: Constants.res[index].hotelLocation,
                                  fontSize: 15,
                                  textColor: Colors.grey,
                                ),
                                IconTextWidget(
                                  icon: Icons.schedule,
                                  iconColor: Colors.pink,
                                  iconSize: 15,
                                  text: '30 Min',
                                  fontSize: 15,
                                  textColor: Colors.grey,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        SmoothPageIndicator(
          count: Constants.res.length,
          effect: const SlideEffect(
            activeDotColor: Colors.teal,
            dotHeight: 10,
            dotWidth: 10,
          ),
          controller: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        //Polular Text
        Container(
          margin: const EdgeInsets.only(left: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: 'Polular',
                color: Colors.black,
                // fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        //list of foods
        Container(
          // height: 700,
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: Constants.res.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  children: [
                    //image section
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            Constants.res[index].hotelImage,
                          ),
                        ),
                      ),
                    ),
                    //text section
                    Expanded(
                      child: Container(
                        height: 120,
                        decoration: const BoxDecoration(
                          // color: Colors.amber,
                          color: Colors.white70,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextWidget(
                                text: Constants.res[index].hotelName
                                    .toUpperCase(),
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              Row(
                                children: [
                                  RatingBarIndicator(
                                    rating: Constants.res[index].hotelRating,
                                    itemBuilder: (context, index) {
                                      return const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 15,
                                      );
                                    },
                                    itemCount: 5,
                                    direction: Axis.horizontal,
                                    itemSize: 15,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  TextWidget(
                                    text: Constants.res[index].hotelRating
                                        .toString(),
                                    color: Colors.grey,
                                    fontSize: 15,
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconTextWidget(
                                    icon: Icons.circle_sharp,
                                    iconColor: Colors.yellow,
                                    iconSize: 15,
                                    text: 'Normal',
                                    fontSize: 15,
                                    textColor: Colors.grey,
                                  ),
                                  IconTextWidget(
                                    icon: Icons.location_on_rounded,
                                    iconColor: Colors.cyan,
                                    iconSize: 15,
                                    text: Constants.res[index].hotelLocation,
                                    fontSize: 15,
                                    textColor: Colors.grey,
                                  ),
                                  IconTextWidget(
                                    icon: Icons.schedule,
                                    iconColor: Colors.pink,
                                    iconSize: 15,
                                    text: '30 Min',
                                    fontSize: 15,
                                    textColor: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}




// image: DecorationImage(
                      //   image: AssetImage(
                      //     Constants.res[index].hotelImage.toString(),
                      //   ),
                      //   fit: BoxFit.cover,
                      // ),
                      // image: DecorationImage(
                      //   image: ParallaxImage(
                      //     extent: 250,
                      //     image: ExactAssetImage(Constants.res[index].hotelImage),
                      //   ),
                      // ),
