import 'package:flutter/material.dart';
import 'package:nuapp/ui/views/home/home_screen.dart';
import 'package:nuapp/ui/views/match/match_screen.dart';
import 'package:nuapp/ui/views/profile/profile_screen.dart';
import 'package:nuapp/utils/colors_utils.dart';

class TestePage extends StatefulWidget {
  const TestePage({super.key});

  @override
  State<TestePage> createState() => _TestePageState();
}

class _TestePageState extends State<TestePage> {
  int currentIndex = 2;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Teste")),
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            MatchScreen(),
            Center(
              child: Text(
                'Page 2',
              ),
            ),
            MatchScreen(),
            Center(
              child: Text(
                'Page 4',
              ),
            ),
            ProfileScreen()
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            currentIndex: currentIndex,
            onTap: (index) {
              void value() {
                print("Helw");
              }

              setState(() {
                currentIndex = index;
                pageController.jumpToPage(index);
              });
              void value2() {
                print("Helw");
              }
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Palette.primaryColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.black,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.view_kanban_sharp),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
            ],
          ),
        ));
  }
}
