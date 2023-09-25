import 'package:flutter/material.dart';
import 'package:food_app/colors/colors.dart';
import 'package:badges/badges.dart' as badges;
import 'package:food_app/screens/home_page_screen/widgets/banner_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  productCards(
      String image, String productTitle, String productSub, String price) {
    return Card(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 100,
            width: 200,
            child: Center(
              child: Image.asset(
                image,
                width: 130,
              ),
            ),
          ),
          const SizedBox(
            width: 150,
            child: Divider(
              thickness: 0.5,
              color: subtitleColor,
            ),
          ),
          SizedBox(
            width: 200,
            child: ListTile(
              title: Text(
                productTitle,
                style: const TextStyle(
                  color: txtColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                productSub,
                style: const TextStyle(
                  color: subtitleColor,
                ),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            borderOnForeground: true,
            child: SizedBox(
              height: 44,
              width: 180,
              child: ListTile(
                titleAlignment: ListTileTitleAlignment.top,
                trailing: const CircleAvatar(
                  child: Icon(
                    Icons.add,
                  ),
                ),
                title: Text(
                  price,
                  style: const TextStyle(
                    color: txtColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //function of product cards
  String dropdownvalue = '1 Hour';

  // List of items in our dropdown menu
  var items = [
    '1 Hour',
    '2 Hour',
    '3 Hour',
  ];

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
                  trailing: Padding(
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
                        color: titleColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  width: 350,
                  child: TextField(
                    style: const TextStyle(color: titleColor),
                    decoration: InputDecoration(
                      fillColor: srchbarcolor,
                      hintText: 'Search Products or Store',
                      hintStyle:
                          const TextStyle(fontSize: 15, color: subtitleColor),
                      prefixIcon: IconButton(
                        padding: const EdgeInsets.only(left: 10),
                        icon: const Icon(
                          Icons.search,
                          size: 23,
                          color: titleColor,
                        ),
                        onPressed: () {},
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 40,
                          style: BorderStyle.solid,
                          color: srchbarcolor,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 40,
                          style: BorderStyle.solid,
                          color: srchbarcolor,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, top: 30),
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: "DELIVERY TO\n",
                              style:
                                  TextStyle(fontSize: 15, color: subtitleColor),
                            ),
                            TextSpan(
                              text: "Green Way 3000, Sylhet",
                              style: TextStyle(fontSize: 15, color: titleColor),
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 50, left: 10),
                        child: const Icon(
                          Icons.arrow_drop_down,
                          color: subtitleColor,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 80, top: 30),
                        child: RichText(
                          text: TextSpan(children: [
                            const TextSpan(
                              text: "WITHIN\n",
                              style:
                                  TextStyle(fontSize: 15, color: subtitleColor),
                            ),
                            TextSpan(
                              text: dropdownvalue,
                              style: const TextStyle(
                                  fontSize: 15, color: titleColor),
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 50,
                        ),
                        child: DropdownButton(
                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const BannerCard(),
          Container(
            height: MediaQuery.of(context).size.height * 0.40,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 15, top: 25),
                    child: const Text(
                      "Recommended",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: txtColor,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                productCards("assets/images/slider1.jpg",
                                    "Lemon Juice", "Organic", "Unit S 12"),
                                productCards("assets/images/slider2.jpg",
                                    "Green Tea", "Organic", "Unit S 06"),
                                productCards("assets/images/slider1.jpg",
                                    "Fresh Juice", "Organic", "Unit S 15"),
                                productCards("assets/images/slider2.jpg",
                                    "Cold Coffe", "Organic", "Unit S 20"),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 15, top: 25),
                            child: const Text(
                              "Weekly Deals",
                              style: TextStyle(
                                fontSize: 30,
                                color: txtColor,
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                productCards("assets/images/slider1.jpg",
                                    "Mango Shake", "Organic", "Unit S 16"),
                                productCards("assets/images/slider2.jpg", "Tea",
                                    "Organic", "Unit S 09"),
                                productCards("assets/images/slider1.jpg",
                                    "Fresh Juice", "Organic", "Unit S 15"),
                                productCards("assets/images/slider2.jpg",
                                    "Cold Coffe", "Organic", "Unit S 20"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// IconButton(
//                           onPressed: () {},
//                           icon: const Icon(Icons.arrow_drop_down),
//                           color: subtitleColor,
//                         ),