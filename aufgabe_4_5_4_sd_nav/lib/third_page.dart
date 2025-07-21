import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

   static NavigationDestination pageDestination = 
    NavigationDestination(icon: Icon(Icons.person), label: "Profil");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Second Page"),
          centerTitle: true,
        ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ ElevatedButton(
            child: Text("Profil"),
            onPressed: () => Navigator.pop(context),
            ), Icon(Icons.person)],
    ));
  }
}