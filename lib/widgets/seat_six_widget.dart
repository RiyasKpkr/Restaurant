import 'package:flutter/material.dart';
import 'package:restaurants/widgets/seat_container_six.dart';

class SeatSixWidget extends StatelessWidget {
  final String number;
  const SeatSixWidget({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            SeatContainerSix(),
            SizedBox(
              width: 10,
            ),
            SeatContainerSix(),
            SizedBox(
              width: 10,
            ),
            SeatContainerSix()
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Center(
            child: Text(
              number,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            SeatContainerSix(),
            SizedBox(
              width: 10,
            ),
            SeatContainerSix(),
            SizedBox(
              width: 10,
            ),
            SeatContainerSix(),
          ],
        )
      ],
    );
  }
}
