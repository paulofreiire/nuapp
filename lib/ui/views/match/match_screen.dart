import 'package:flutter/material.dart';
import 'package:nuapp/ui/views/details/details_screen.dart';
import 'package:nuapp/ui/views/match/widgets/card_small_widget.dart';
import 'package:nuapp/ui/views/match/widgets/card_widget.dart';
import 'package:nuapp/utils/styles/colors.dart';

import '../all_match/all_match_page.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            children: [
              // Container Header Custom
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
                          'Match',
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
              // New Match See All
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "New Match",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AllMatchScreen()));
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(
                            color: Palette.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              // ListCardBig
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DetailScreen()));
                },
                child: SizedBox(
                  height: 310,
                  width: size.width,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 52,
                    itemBuilder: (BuildContext context, int index) {
                      return const CardListWidget();
                    },
                    separatorBuilder: (_, index) => const SizedBox(width: 5),
                  ),
                ),
              ),
              // All Match See All Row
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "All Match",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AllMatchScreen()));
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(
                            color: Palette.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              // ListCardSmall
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DetailScreen()));
                },
                child: SizedBox(
                  height: 220,
                  width: size.width,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 52,
                    itemBuilder: (BuildContext context, int index) {
                      return const CardSmallListWidget();
                    },
                    separatorBuilder: (_, index) => const SizedBox(width: 8),
                  ),
                ),
              ),
              //Divider
              Divider(
                color: Colors.grey.shade300,
                thickness: 1,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
