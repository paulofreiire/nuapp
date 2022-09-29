import 'package:flutter/material.dart';

class CardSmallListWidget extends StatelessWidget {
  const CardSmallListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            'assets/images/examples2.jpg',
            height: 170,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              "Nome",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Idade",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            )
          ],
        )
      ],
    );
  }
}
