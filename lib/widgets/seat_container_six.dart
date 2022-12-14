import 'package:flutter/material.dart';

class SeatContainerSix extends StatefulWidget {
  const SeatContainerSix({super.key});

  @override
  State<SeatContainerSix> createState() => _SeatContainerSixState();
}

class _SeatContainerSixState extends State<SeatContainerSix> {
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
        height: 15,
        width: 60,
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
