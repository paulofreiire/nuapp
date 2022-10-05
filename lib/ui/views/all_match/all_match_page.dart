import 'package:flutter/material.dart';
import 'package:nuapp/ui/views/all_match/widgets/card_grid_widget.dart';
import 'package:nuapp/ui/views/details/details_screen.dart';
import 'package:nuapp/utils/colors_utils.dart';

import '../../../model/perfil_user.dart';

class AllMatchScreen extends StatefulWidget {
  const AllMatchScreen({super.key});

  @override
  State<AllMatchScreen> createState() => _AllMatchScreenState();
}

class _AllMatchScreenState extends State<AllMatchScreen> {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container Header Custom
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 25,
                          color: Palette.primaryColor,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      const Text(
                        'All Match (Value)',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: Palette.primaryColorLight,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))),
                          child: const Icon(
                            Icons.search,
                            color: Palette.primaryColor,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: Palette.primaryColorLight,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))),
                          child: const Icon(
                            Icons.filter_list,
                            color: Palette.primaryColor,
                          ))
                    ],
                  )
                ],
              ),

              // ListCardGrid
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const DetailScreen()));
                },
                child: GridView.builder(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 8 / 11.5,
                  ),
                  itemCount: draggableItems.length,
                  itemBuilder: (_, index) {
                    if (((index + 1) == draggableItems.length)) {}

                    return const CardGridWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
