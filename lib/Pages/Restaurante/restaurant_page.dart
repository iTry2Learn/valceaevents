import 'package:flutter/material.dart';
import 'package:valceaapp/Components/restaurant.dart';
import 'package:valceaapp/Components/restaurant_carousel.dart';
import 'package:valceaapp/Components/restaurant_cover_page.dart';

class RestaurantPage extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantPage({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    // folosește același background ca Home pentru tranziții uniforme
    const Color pageBg = Color.fromARGB(255, 38, 38, 38);

    return Scaffold(
      backgroundColor: pageBg, // <- schimbat din Colors.white10
      body: CustomScrollView(
        slivers: [
          // AppBar cu cover (RestaurantCoverPage conține Hero)
          SliverAppBar(
            pinned: true,
            expandedHeight: 220,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
              background: RestaurantCoverPage(
                restaurant: restaurant,
                height: 250,
              ),
            ),
          ),

          // Conținutul paginii: carousel + descriere
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // taglist slider
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: restaurant.taguri
                          .map(
                            (tag) => Container(
                              margin: const EdgeInsets.only(right: 8),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                tag,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Prezentarea locației',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 16),
                  // Carousel-ul de imagini
                  RestaurantCarousel(restaurant: restaurant),
                  const SizedBox(height: 16),
                  // Meniuri
                  Text(
                    'Meniuri',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 100),
                  const SizedBox(height: 1000),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
