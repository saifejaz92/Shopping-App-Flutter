import 'package:flutter/material.dart';
import 'package:food_app/screens/categories_screen/widgets/Shopping%20List.dart';

import '../../../colors/colors.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2.3 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: ShoppingList.length,
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              onTap: () {},
              child: Card(
                color: const Color(0xffE0E2EE),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 100,
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            ShoppingList[index]["image"].toString(),
                            width: 130,
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 100,
                      child: Divider(
                        thickness: 0.5,
                        color: subtitleColor,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      height: 66,
                      child: ListTile(
                        title: Text(
                          ShoppingList[index]["title"].toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: txtColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          ShoppingList[index]["description"].toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
