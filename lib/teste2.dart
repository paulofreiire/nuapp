import 'package:flutter/material.dart';
import 'package:nuapp/ui/views/home/home_screen.dart';
import 'package:nuapp/ui/views/match/match_screen.dart';
import 'package:nuapp/ui/views/profile/profile_screen.dart';
import 'package:nuapp/utils/colors_utils.dart';

class TestePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
        ],
      ),
      body: Navigator(
        onGenerateRoute: (settings) {
          Widget page = Page1();
          if (settings.name == 'page2') page = Page2();
          return MaterialPageRoute(builder: (_) => page);
        },
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'page2');
          },
          child: Text("Outra pagina"),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(appBar: AppBar(title: Text('Page2')));
}
