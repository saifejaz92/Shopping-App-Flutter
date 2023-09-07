import 'package:flutter/material.dart';
import 'package:food_app/colors/colors.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Expanded(
              flex: 0,
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 10),
                width: 275,
                height: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: btnColor,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: ListTile(
                      leading: Image.asset(
                        "assets/images/slider1.jpg",
                      ),
                      title: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: "Get\n",
                              style: TextStyle(fontSize: 25),
                            ),
                            TextSpan(
                              text: "50% OFF",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ]),
                        ),
                      ),
                      subtitle: Container(
                        margin: EdgeInsets.only(left: 10, top: 3),
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: "on first",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: " 03 ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: "orders",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 30),
                width: 275,
                height: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: cardColor,
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: ListTile(
                      leading: Image.asset(
                        "assets/images/slider2.jpg",
                      ),
                      title: Container(
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: "Get\n",
                              style: TextStyle(fontSize: 25),
                            ),
                            TextSpan(
                              text: "50% OFF",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ]),
                        ),
                      ),
                      subtitle: RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                            text: "on first",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            text: " 03 ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          TextSpan(
                            text: "orders",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
