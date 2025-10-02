import 'package:flutter/material.dart';
import 'package:valceaapp/Components/restaurant.dart';

class RestaurantCoverPage extends StatelessWidget {
  final Restaurant restaurant;
  final double height;

  const RestaurantCoverPage({
    super.key,
    required this.restaurant,
    this.height = 300,
  });

  @override
  Widget build(BuildContext context) {
    const Color pageBg = Color.fromARGB(
      255,
      38,
      38,
      38,
    ); // același dark ca Home

    return Stack(
      children: [
        // cliprrect cu fundal opac + Hero pentru imagine (tag consistent)
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          child: SizedBox(
            height: height,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                // fundal opac — elimină "albul" care se vede dedesubt
                Container(color: pageBg),
                // imagine (Hero)
                Hero(
                  tag: 'restaurant_cover_${restaurant.id}',
                  child: Image.asset(
                    restaurant.coverImage,
                    height: height,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),

        // gradient pentru lizibilitate
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
          child: Container(
            height: height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.3),
                  Color.fromRGBO(0, 0, 0, 0.7),
                ],
              ),
            ),
          ),
        ),

        // text peste imagine
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                restaurant.nume,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    restaurant.rating,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.star, color: Colors.amber, size: 18),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                restaurant.descriere,
                style: const TextStyle(fontSize: 16, color: Colors.white),
                softWrap: true,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
