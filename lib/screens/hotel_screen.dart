import 'package:flutter/material.dart';
import 'package:restaurants/widgets/seat_four_widget.dart';
import 'package:restaurants/widgets/seat_six_widget.dart';

class ScreenHotel extends StatelessWidget {
  final String hotelName;
  final String hotelImage;
 const ScreenHotel({
    super.key,
    required this.hotelName,
    required this.hotelImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: false,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(hotelName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ) //TextStyle
                  ), //Text
              background: Image.asset(
                hotelImage,
                fit: BoxFit.cover,
              ), //Images.network
            ),
            expandedHeight: 250,
            backgroundColor: Colors.teal,
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // ignore:
                      children: const [
                        SeatFourWidget(number: '001'),
                        SeatFourWidget(number: '002'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SeatSixWidget(number: '003'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SeatSixWidget(number: '004'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        SeatFourWidget(number: '005'),
                        SeatFourWidget(number: '006'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SeatSixWidget(number: '007'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SeatSixWidget(number: '008'),
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
  }
}
