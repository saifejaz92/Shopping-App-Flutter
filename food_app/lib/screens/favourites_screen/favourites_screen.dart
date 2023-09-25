import 'package:flutter/material.dart';
import 'package:food_app/screens/categories_screen/widgets/shopping_list.dart';

import '../../colors/colors.dart';
import '../categories_screen/product_details.dart';
// import 'package:provider/provider.dart';

// import '../../colors/colors.dart';
// import '../categories_screen/product_details.dart';
// import '../categories_screen/widgets/shopping_list.dart';
// import 'favourite_provider.dart';

class FavouriteScreen extends StatefulWidget {
  final List favoriteScreenItems;
  const FavouriteScreen({super.key, required this.favoriteScreenItems});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<FavouriteProvider>(context);
    // final words = provider.shoppingList;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Favourites",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: favitem.isEmpty
            ? const Center(
                child: Text("No Item Added To Favourites"),
              )
            : GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2.1 / 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: favitem.length,
                itemBuilder: (BuildContext ctx, index) {
                  return GestureDetector(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsPage(
                            productName: favitem[index],
                          ),
                        ),
                      );
                      setState(() {});
                    },
                    child: Card(
                      color: const Color(0xffE0E2EE),
                      child: Column(
                        children: [
                          // Align(
                          //   alignment: Alignment.topRight,
                          //   child: CircleAvatar(
                          //     radius: 15,
                          //     child: IconButton(
                          //         onPressed: () {
                          //           setState(() {
                          //             favitem.remove(favitem[index]);
                          //           });
                          //           print("object");
                          //         },
                          //         icon: const Icon(
                          //           Icons.remove,
                          //           size: 15,
                          //         )),
                          //   ),
                          // ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            height: 100,
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                  favitem[index]["image"].toString(),
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
                                favitem[index]["title"].toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: txtColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                favitem[index]["description"].toString(),
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
    );
  }
}
