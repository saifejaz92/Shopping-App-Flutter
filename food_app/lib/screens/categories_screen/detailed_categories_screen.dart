import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:food_app/screens/categories_screen/product_details.dart';
import 'package:food_app/screens/categories_screen/widgets/shopping_list.dart';
import '../../../colors/colors.dart';

class DetailedCategoriesScreen extends StatefulWidget {
  const DetailedCategoriesScreen({super.key});

  @override
  State<DetailedCategoriesScreen> createState() =>
      _DetailedCategoriesScreenState();
}

class _DetailedCategoriesScreenState extends State<DetailedCategoriesScreen> {
  List categoryy = [
    "men's clothing",
    "women's clothing",
    "electronics",
    "jewelery",
  ];
  List selectedCategory = [];
  @override
  Widget build(BuildContext context) {
    final filteredProduct = ShoppingList.where(
      (element) {
        return selectedCategory.isEmpty ||
            selectedCategory.contains(element["category"]);
      },
    ).toList();
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ListTile(
          title: const Text(
            "Category",
            style: TextStyle(fontSize: 22),
          ),
          trailing: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Icon(
                    Icons.search,
                    color: txtColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: badges.Badge(
                    position: badges.BadgePosition.custom(bottom: 5, end: -5),
                    badgeStyle: const badges.BadgeStyle(
                      badgeColor: btnColor,
                    ),
                    badgeContent: const Text(
                      "0",
                      style: TextStyle(color: titleColor),
                    ),
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      color: txtColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: categoryy
                    .map(
                      (category) => FilterChip(
                          side: const BorderSide(
                              width: 1, style: BorderStyle.solid),
                          backgroundColor: Colors.white,
                          selectedColor: btnColor,
                          selected: selectedCategory.contains(category),
                          label: Text(category),
                          onSelected: (selected) {
                            setState(() {
                              if (selected) {
                                selectedCategory.add(category);
                              } else {
                                selectedCategory.remove(category);
                              }
                            });
                          }),
                    )
                    .toList(),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2.1 / 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: filteredProduct.length,
                  itemBuilder: (BuildContext ctx, index) {
                    final products = filteredProduct[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailsPage(
                              productName: products,
                            ),
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
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.network(
                                    products["image"].toString(),
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
                                  products["title"].toString(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: txtColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  products["description"].toString(),
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
            ),
          ),
        ],
      ),
    );
  }
}
