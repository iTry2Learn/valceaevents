import 'package:valceaapp/Components/restaurant.dart';

final List<Restaurant> restaurante = [
  Restaurant(
    id: '1',
    nume: 'Frutti di Mare',
    coverImage:
        'lib/assets/RestaurantImages/Restaurant1/RestaurantPhoto/cover.jpg',
    descriere: 'Specializat în fructe de mare și vinuri fine.',
    taguri: [
      'Fructe de mare',
      'Italienesc',
      'Vinuri',
      'Romantic',
      'Nunti',
      'Evenimente',
    ],
    imaginiCarousel: [
      'lib/assets/RestaurantImages/Restaurant1/RestaurantPhoto/cover.jpg',
      'lib/assets/RestaurantImages/Restaurant1/RestaurantPhoto/table1.jpg',
      'lib/assets/RestaurantImages/Restaurant1/RestaurantPhoto/table2.jpg',
      'lib/assets/RestaurantImages/Restaurant1/RestaurantPhoto/table3.jpg',
      'lib/assets/RestaurantImages/Restaurant1/RestaurantPhoto/table4.jpg',
      'lib/assets/RestaurantImages/Restaurant1/RestaurantPhoto/table5.jpg',
      'lib/assets/RestaurantImages/Restaurant1/FoodPhoto/food1.jpg',
      'lib/assets/RestaurantImages/Restaurant1/FoodPhoto/food2.jpg',
      'lib/assets/RestaurantImages/Restaurant1/FoodPhoto/food3.jpg',
      'lib/assets/RestaurantImages/Restaurant1/FoodPhoto/food4.jpg',
      'lib/assets/RestaurantImages/Restaurant1/FoodPhoto/food5.jpg',
      'lib/assets/RestaurantImages/Restaurant1/FoodPhoto/food6.jpg',
      'lib/assets/RestaurantImages/Restaurant1/FoodPhoto/food7.jpg',
    ],
    meniu: [],
    rating: '5.0',
  ),
  Restaurant(
    id: '2',
    nume: 'Chef`s Bistro',
    coverImage:
        'lib/assets/RestaurantImages/Restaurant1/RestaurantPhoto/table5.jpg',
    descriere: 'Bistro modern, perfect pentru pizza și petreceri.',
    taguri: ['Bar', 'Pizza', 'Pasta', 'Petreceri'],
    imaginiCarousel: [],
    meniu: [],
    rating: '4.7',
  ),
];
