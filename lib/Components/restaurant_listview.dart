import 'package:flutter/material.dart';
import 'package:valceaapp/Components/restaurant_tile_restaurants_page.dart';
// import 'package:valceaapp/Components/restaurant.dart';
import 'package:valceaapp/Pages/Restaurante/restaurant_data.dart';
import 'package:valceaapp/Pages/Restaurante/restaurant_page.dart';

class RestaurantListview extends StatelessWidget {
  const RestaurantListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: restaurante.length,
      itemBuilder: (context, index) {
        final restaurant = restaurante[index];
        return RestaurantTile(
          restaurant: restaurant,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RestaurantPage(restaurant: restaurant),
              ),
            );
          },
        );
      },
    );
  }
}
