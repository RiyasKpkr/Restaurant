import 'package:flutter/material.dart';

class SeatContainerFour extends StatefulWidget {
  const SeatContainerFour({super.key});

  @override
  State<SeatContainerFour> createState() => _SeatContainerFourState();
}

class _SeatContainerFourState extends State<SeatContainerFour> {
  bool seatColor = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          seatColor = !seatColor;
          print(seatColor);
        });
      },
      child: Container(
        height: 60,
        width: 15,
        decoration: BoxDecoration(
          color: seatColor ? Colors.white : Colors.teal,
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
      ),
    );
  }
}
