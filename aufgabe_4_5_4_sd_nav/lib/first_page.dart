import 'package:aufgabe_4_5_4_sd_nav/second_page.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  static NavigationDestination pageDestination = 
    NavigationDestination(icon: Icon(Icons.star), label: "News");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("First Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star),
          ElevatedButton(
            child: Text("News"),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            ),
          ),
        ],
      ),
    );
  }
}

