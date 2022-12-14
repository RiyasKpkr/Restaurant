import 'package:flutter/material.dart';
import 'package:restaurants/widgets/seat_container_four.dart';

class SeatFourWidget extends StatelessWidget {
  final String number;
  const SeatFourWidget({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            SeatContainerFour(),
            SizedBox(
              height: 10,
            ),
            SeatContainerFour(),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 130,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Center(
            child: Text(
              number,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            SeatContainerFour(),
            SizedBox(
              height: 10,
            ),
            SeatContainerFour(),
          ],
        ),
      ],
    );
  }
}
