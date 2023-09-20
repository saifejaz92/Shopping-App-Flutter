import 'package:flutter/material.dart';
import '../../../colors/colors.dart';
import '../detailed_categories_screen.dart';
import 'shopping_list.dart';

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
              childAspectRatio: 2.1 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: categoriesList.length,
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailedCategoriesScreen(),
                  ),
                );
              },
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
                          child: Image.network(
                            categoriesList[index]["image"].toString(),
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
                          categoriesList[index]["title"].toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: txtColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          categoriesList[index]["description"].toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 10,
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
