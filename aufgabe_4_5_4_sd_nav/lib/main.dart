import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'first_page.dart';
import 'second_page.dart';
import 'third_page.dart';

void main() {
  runApp(const AppHome(title: "Stack test"));
}

class AppHome extends StatefulWidget {
  const AppHome({super.key, required this.title});
  final String title;

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int currentIndex = 0;

  List<Widget> screens = [FirstScreen(), SecondScreen(), ThirdScreen()];

  List<NavigationDestination> pageDestinations = [
    FirstScreen.pageDestination,
    SecondScreen.pageDestination,
    ThirdScreen.pageDestination,
  ];

// Alternative
  List<NavigationDestination> pageDestinations2 = [
    NavigationDestination(icon: Icon(Icons.star), label: "News"),
    NavigationDestination(icon: Icon(Icons.heart_broken_rounded), label: "Likes"),
    NavigationDestination(icon: Icon(Icons.person), label: "Profil"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: IndexedStack(index: currentIndex, children: screens),
        bottomNavigationBar: NavigationBar(
          destinations: pageDestinations,
          selectedIndex: currentIndex,
          onDestinationSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
