import 'package:flutter/material.dart';
import 'package:nuapp/ui/views/home/widgets/drag_widget.dart';
import 'package:nuapp/utils/styles/colors.dart';

import '../../../main.dart';
import '../../../mock/mock_perfil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);
  late final AnimationController _animationController;


  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        draggableItems.removeLast();
        _animationController.reset();
        swipeNotifier.value = Swipe.none;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            alignment: Alignment.center,
            width: double.infinity,
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
                      clipBehavior: Clip.none,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ValueListenableBuilder(
                            valueListenable: swipeNotifier,
                            builder: (context, swipe, _) => Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children:
                                  List.generate(draggableItems.length, (index) {
                                if (index == draggableItems.length - 1) {
                                  return PositionedTransition(
                                    rect: RelativeRectTween(
                                      begin: RelativeRect.fromSize(
                                          const Rect.fromLTWH(0, 0, 580, 340),
                                          const Size(580, 340)),
                                      end: RelativeRect.fromSize(
                                          Rect.fromLTWH(
                                              swipe != Swipe.none
                                                  ? swipe == Swipe.left
                                                      ? -300
                                                      : 300
                                                  : 0,
                                              0,
                                              580,
                                              340),
                                          const Size(580, 340)),
                                    ).animate(CurvedAnimation(
                                      parent: _animationController,
                                      curve: Curves.easeInOut,
                                    )),
                                    child: RotationTransition(
                                      turns: Tween<double>(
                                              begin: 0,
                                              end: swipe != Swipe.none
                                                  ? swipe == Swipe.left
                                                      ? -0.1 * 0.3
                                                      : 0.1 * 0.3
                                                  : 0.0)
                                          .animate(
                                        CurvedAnimation(
                                          parent: _animationController,
                                          curve: const Interval(0, 0.4,
                                              curve: Curves.easeInOut),
                                        ),
                                      ),
                                      child: DragWidget(
                                        profile: draggableItems[index],
                                        index: index,
                                        swipeNotifier: swipeNotifier,
                                        isLastCard: true,
                                      ),
                                    ),
                                  );
                                } else {
                                  return DragWidget(
                                    profile: draggableItems[index],
                                    index: index,
                                    swipeNotifier: swipeNotifier,
                                  );
                                }
                              }),
                            ),
                          ),
                        ),
                        Positioned(
                          top: size.height * 0.60,
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
                                child: Center(
                                    child: IconButton(
                                  icon: const Icon(Icons.cancel),
                                  color: Palette.primaryColor,
                                  onPressed: () {
                                    swipeNotifier.value = Swipe.left;
                                    _animationController.forward();
                                  },
                                )),
                              ),
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Center(
                                      child: IconButton(
                                    icon: const Icon(
                                      Icons.favorite_border,
                                      size: 35,
                                    ),
                                    color: Palette.primaryColor,
                                    onPressed: () {
                                      swipeNotifier.value = Swipe.right;
                                      _animationController.forward();
                                    },
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
                                child: Center(
                                    child: IconButton(
                                  icon: const Icon(Icons.star_border_sharp),
                                  color: Palette.primaryColor,
                                  onPressed: () {
                                    swipeNotifier.value = Swipe.right;
                                    _animationController.forward();
                                  },
                                )),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 35,
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
                        Positioned(
                          left: 0,
                          child: DragTarget<int>(
                            builder: (
                              BuildContext context,
                              List<dynamic> accepted,
                              List<dynamic> rejected,
                            ) {
                              return IgnorePointer(
                                child: Container(
                                  height: 700.0,
                                  width: 80.0,
                                  color: Colors.transparent,
                                ),
                              );
                            },
                            onAccept: (int index) {
                
                              setState(() {
                                draggableItems.removeAt(index);
                              });
                            },
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: DragTarget<int>(
                            builder: (
                              BuildContext context,
                              List<dynamic> accepted,
                              List<dynamic> rejected,
                            ) {
                              return IgnorePointer(
                                child: Container(
                                  height: 700.0,
                                  width: 80.0,
                                  color: Colors.transparent,
                                ),
                              );
                            },
                            onAccept: (int index) {
                        
                              setState(() {
                                draggableItems.removeAt(index);
                              });
                            },
                          ),
                        ),
                      ],
                    )),
                const SizedBox()
              ],
            )),
      ),
    );
  }
}
