import 'package:flutter/material.dart';
import 'package:nuapp/teste.dart';
import 'package:nuapp/utils/colors_utils.dart';

import '../../../model/perfil_user.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  List<PerfilUser> draggableItems = [
    const PerfilUser(
        name: 'Rohini',
        distance: '10 miles away',
        imageAsset: 'assets/images/examples.jpg'),
    const PerfilUser(
        name: 'Rohini',
        distance: '10 miles away',
        imageAsset: 'assets/images/examples2.jpg'),
    const PerfilUser(
        name: 'Rohini',
        distance: '10 miles away',
        imageAsset: 'assets/images/examples3.jpg'),
    const PerfilUser(
        name: 'Rohini',
        distance: '10 miles away',
        imageAsset: 'assets/images/examples.jpg'),
    const PerfilUser(
        name: 'Rohini',
        distance: '10 miles away',
        imageAsset: 'assets/images/examples2.jpg'),
    const PerfilUser(
        name: 'Rohini',
        distance: '10 miles away',
        imageAsset: 'assets/images/examples3.jpg'),
    const PerfilUser(
        name: 'Rohini',
        distance: '10 miles away',
        imageAsset: 'assets/images/examples.jpg'),
    const PerfilUser(
        name: 'Rohini',
        distance: '10 miles away',
        imageAsset: 'assets/images/examples2.jpg'),
    const PerfilUser(
        name: 'Rohini',
        distance: '10 miles away',
        imageAsset: 'assets/images/examples3.jpg'),
    const PerfilUser(
        name: 'Rohini',
        distance: '10 miles away',
        imageAsset: 'assets/images/examples.jpg'),
    const PerfilUser(
        name: 'Rohini',
        distance: '10 miles away',
        imageAsset: 'assets/images/examples2.jpg'),
    const PerfilUser(
        name: 'Rohini',
        distance: '10 miles away',
        imageAsset: 'assets/images/examples3.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                          color: Palette.primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Icon(
                        Icons.fiber_manual_record_outlined,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Text(
                        'Kencan',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Palette.primaryColorLight,
                        borderRadius: BorderRadius.all(Radius.circular(7))),
                    child: const Icon(
                      Icons.filter_list,
                      color: Palette.primaryColor,
                    ))
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>   TestePage()));
                },
                child: Text("Aqui"))
          ],
        ),
      )),
    );
  }
}