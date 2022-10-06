import 'package:flutter/material.dart';
import 'package:nuapp/utils/styles/colors.dart';

class CardListWidget extends StatelessWidget {
  const CardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            'assets/images/examples2.jpg',
            height: 310,
            width: 230,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 150,
              width: 230,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                gradient: LinearGradient(
                  begin: const Alignment(0.0, -1.0),
                  end: const Alignment(0.0, 0.6),
                  colors: [
                    const Color.fromARGB(0, 179, 120, 119),
                    Palette.primaryColor.withOpacity(0.2),
                    Palette.primaryColor.withOpacity(0.4),
                    Palette.primaryColor.withOpacity(0.6),
                    Palette.primaryColor.withOpacity(0.8),
                  ],
                ),
              ),
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
