import 'package:flutter/material.dart';
import 'package:food_app/colors/colors.dart';
import 'package:badges/badges.dart' as badges;
import 'package:food_app/screens/categories_screen/widgets/Categories_list.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: bgColor,
            height: MediaQuery.of(context).size.height * 0.30,
            child: Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.only(top: 40, left: 10),
                  title: const Text(
                    "Hey, Halal",
                    style: TextStyle(
                      fontSize: 20,
                      color: titleColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Icon(
                            Icons.search,
                            color: titleColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: badges.Badge(
                            position:
                                badges.BadgePosition.custom(bottom: 5, end: -5),
                            badgeStyle: const badges.BadgeStyle(
                              badgeColor: btnColor,
                            ),
                            badgeContent: const Text(
                              "3",
                              style: TextStyle(color: titleColor),
                            ),
                            child: const Icon(
                              Icons.shopping_bag_outlined,
                              color: titleColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(top: 10),
                  height: 150,
                  width: 390,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Shop\n",
                          style: TextStyle(
                            fontSize: 50,
                            color: titleColor,
                          ),
                        ),
                        TextSpan(
                          text: "By Category",
                          style: TextStyle(
                            fontSize: 60,
                            color: titleColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.70,
            width: MediaQuery.of(context).size.width * 0.90,
            child: CategoriesList(),
          ),
        ],
      ),
    );
  }
}
