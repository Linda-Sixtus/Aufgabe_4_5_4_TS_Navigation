import 'package:flutter/material.dart';
import 'third_page.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  static NavigationDestination pageDestination = NavigationDestination(
    icon: Icon(Icons.heart_broken_rounded),
    label: "Likes",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Second Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Zurück"),
              onPressed: () => Navigator.pop(context),
            ),
            ElevatedButton(
              child: Text("Likes"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ThirdScreen()),
              ),
            ),
            Icon(Icons.heart_broken_rounded),
          ],
        ),
      ),
    );
  }
}
