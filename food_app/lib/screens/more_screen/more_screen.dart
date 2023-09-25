import 'package:flutter/material.dart';
import 'package:food_app/screens/categories_screen/widgets/shopping_list.dart';
import 'package:food_app/screens/favourites_screen/favourites_screen.dart';
import 'package:food_app/screens/more_screen/cart_items.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("More"),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartItems(),
                ),
              );
            },
            child: const Card(
              child: ListTile(
                title: Text("Cart Page"),
                leading: Icon(Icons.shopping_bag),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FavouriteScreen(favoriteScreenItems: favitem),
                ),
              );
            },
            child: const Card(
              child: ListTile(
                title: Text("Favourite Page"),
                leading: Icon(Icons.favorite),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
