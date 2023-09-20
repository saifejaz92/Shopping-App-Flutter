import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
// import 'package:food_app/screens/categories_screen/widgets/shopping_list.dart';
// import 'package:food_app/screens/more_screen/cart_items.dart';
// import 'package:food_app/screens/categories_screen/widgets/shopping_list.dart';
// import 'package:food_app/screens/favourites_screen/favourite_provider.dart';
// import 'package:provider/provider.dart';
import '../../colors/colors.dart';
import '../more_screen/cart_items.dart';
import 'widgets/shopping_list.dart';

class ProductDetailsPage extends StatefulWidget {
  final Map productName;
  const ProductDetailsPage({
    super.key,
    required this.productName,
  });

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ListTile(
          title: Text(
            widget.productName["title"].toString(),
            style: const TextStyle(fontSize: 18),
          ),
          trailing: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: badges.Badge(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CartItems(),
                        ),
                      );
                      setState(() {});
                    },
                    position: badges.BadgePosition.custom(bottom: 5, end: -5),
                    badgeStyle: const badges.BadgeStyle(
                      badgeColor: btnColor,
                    ),
                    badgeContent: Text(
                      cartItems.length.toString(),
                      style: const TextStyle(color: titleColor),
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
      body: PageView.builder(
        itemBuilder: (context, index) => Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.network(widget.productName["image"].toString()),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              width: MediaQuery.of(context).size.width * 0.93,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 20),
                  ),
                  Text(
                    widget.productName["title"].toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        widget.productName["price"].toString(),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 20,
                        width: 70,
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "${widget.productName["count"].toString()} 0FF",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 140,
                      ),
                      CircleAvatar(
                        backgroundColor: bgColor,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (widget.productName["isfav"] == true) {
                                widget.productName["isfav"] = false;
                                favitem.remove(widget.productName);
                              } else {
                                widget.productName["isfav"] = true;
                                favitem.add(widget.productName);
                              }
                            });
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: widget.productName["isfav"] == true
                                ? Colors.red
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RatingBar(rating: 3.3, ratingCount: 5),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  const Text(
                    "Description",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.productName["description"].toString(),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  const Text(
                    "Material",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                    ),
                  ),
                  const Text(
                    "Reviews",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(widget.productName["rating"].toString()),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 130,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              cartItems.add(widget.productName);
                            });
                          },
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.white70),
                            side: const MaterialStatePropertyAll(
                              BorderSide(color: bgColor, width: 1),
                            ),
                          ),
                          child: const Text(
                            "Add To Cart",
                            style: TextStyle(color: bgColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 130,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            backgroundColor:
                                const MaterialStatePropertyAll(bgColor),
                          ),
                          child: const Text("Buy Now"),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///rating bar widget class

class RatingBar extends StatelessWidget {
  final double rating;
  final double size;
  final int ratingCount;
  RatingBar({required this.rating, required this.ratingCount, this.size = 18});

  @override
  Widget build(BuildContext context) {
    List<Widget> _starList = [];

    int realNumber = rating.floor();
    int partNumber = ((rating - realNumber) * 10).ceil();

    for (int i = 0; i < 5; i++) {
      if (i < realNumber) {
        _starList.add(Icon(Icons.star,
            color: Theme.of(context).primaryColor, size: size));
      } else if (i == realNumber) {
        _starList.add(SizedBox(
          height: size,
          width: size,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Icon(Icons.star,
                  color: Theme.of(context).primaryColor, size: size),
              ClipRect(
                clipper: _Clipper(part: partNumber),
                child: Icon(Icons.star, color: Colors.grey, size: size),
              )
            ],
          ),
        ));
      } else {
        _starList.add(Icon(Icons.star, color: Colors.grey, size: size));
      }
    }
    // ignore: unnecessary_null_comparison
    ratingCount != null
        ? _starList.add(
            Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('($ratingCount)',
                    style: TextStyle(
                        fontSize: size * 0.8,
                        color: Theme.of(context).disabledColor))),
          )
        : const SizedBox();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: _starList,
    );
  }
}

class _Clipper extends CustomClipper<Rect> {
  final int part;

  _Clipper({required this.part});

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(
      (size.width / 10) * part,
      0.0,
      size.width,
      size.height,
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => true;
}
