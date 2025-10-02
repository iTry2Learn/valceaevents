import 'package:flutter/material.dart';
import 'package:valceaapp/Components/restaurant_listview.dart';

class LocatiiPage extends StatelessWidget {
  const LocatiiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Locații partenere',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ), // ← adaugă această linie
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: const RestaurantListview(),
    );
  }
}
