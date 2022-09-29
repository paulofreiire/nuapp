import 'package:flutter/material.dart';
import 'package:nuapp/utils/colors_utils.dart';

class InterestWidget extends StatelessWidget {
  const InterestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(mainAxisSize: MainAxisSize.min, children: const [
        Icon(
          Icons.person,
          color: Colors.white,
          size: 18,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Music',
          style: TextStyle(fontSize: 14.0, color: Colors.white),
        )
      ]),
    );
  }
}
