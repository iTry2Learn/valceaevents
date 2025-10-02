import 'package:flutter/material.dart';
import 'package:valceaapp/Components/my_drawer.dart';
import 'package:valceaapp/Components/restaurant.dart';
import 'package:valceaapp/Components/restaurant_tile_home_screen.dart';
import 'package:valceaapp/Pages/Restaurante/restaurant_data.dart';
import 'package:valceaapp/Pages/Restaurante/restaurant_page.dart';
import 'package:valceaapp/Pages/locations_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _navigateToRestaurant(
    BuildContext context,
    Restaurant restaurant,
  ) async {
    // pregătește imaginea pentru Hero
    await precacheImage(AssetImage(restaurant.coverImage), context);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RestaurantPage(restaurant: restaurant),
      ),
    );
  }

  void _navigateToLocatii(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LocatiiPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const Color pageBg = Color.fromARGB(255, 38, 38, 38);

    return Scaffold(
      backgroundColor: pageBg,
      appBar: AppBar(
        title: const Text('ValceaEvents'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent,
        ),
        backgroundColor: pageBg,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header lista restaurante
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Săli de evenimente recomandate",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () => _navigateToLocatii(context),
                    child: const Text(
                      "Vezi toate",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 205, 192, 254),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Listă restaurante scroll horizontal
            SizedBox(
              height: 182,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: restaurante.length,
                itemBuilder: (context, index) {
                  final restaurant = restaurante[index];
                  return SizedBox(
                    width: 250,
                    child: RestaurantTileHomeScreen(
                      restaurant: restaurant,
                      onTap: () => _navigateToRestaurant(context, restaurant),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            // Secțiune promoții & oferte
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                "Promoții & Oferte",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
            Container(
              height: 150,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Center(
                child: Text(
                  "Aici putem pune bannere promoționale",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
