import 'package:flutter/material.dart';

class CardDetailsListWidget extends StatelessWidget {
  const CardDetailsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          'assets/images/examples2.jpg',
          height: size.height * 0.70,
          width: size.width,
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 150,
              width: 230,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 30),
                child: (Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Nome, Idade",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Profissao",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
