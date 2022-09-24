import 'package:flutter/material.dart';
import 'package:nuapp/utils/colors_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: size.height,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
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
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: size.height * 0.70,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              height: size.height * 0.67,
                              width: double.infinity,
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  child: Image.asset(
                                    'assets/images/examples.jpg',
                                    fit: BoxFit.fill,
                                  ))),
                        ],
                      ),
                      Positioned(
                        top: size.height * 0.63,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.primaryColorLight,
                                        offset: Offset(0.0, 1.0),
                                        blurRadius: 7.0,
                                      ),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: const Center(
                                    child: Icon(
                                  Icons.cancel_rounded,
                                  size: 30,
                                  color: Palette.primaryColor,
                                ))),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Palette.primaryColorLight,
                                        offset: Offset(0.0, 1.0),
                                        blurRadius: 7.0,
                                      ),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: const Center(
                                    child: Icon(
                                  Icons.favorite_border_rounded,
                                  size: 40,
                                  color: Palette.primaryColor,
                                )),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Palette.primaryColorLight,
                                      offset: Offset(0.0, 1.0),
                                      blurRadius: 7.0,
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: const Center(
                                  child: Icon(
                                Icons.star_border_sharp,
                                size: 30,
                                color: Palette.primaryColor,
                              )),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 15,
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 5),
                            decoration: BoxDecoration(
                              color: Palette.primaryColorLight,
                              border: Border.all(
                                  width: 1,
                                  style: BorderStyle.solid,
                                  color: Palette.primaryColorLight),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.arrow_right_alt_outlined,
                                  color: Palette.primaryColor,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "3 miles",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
