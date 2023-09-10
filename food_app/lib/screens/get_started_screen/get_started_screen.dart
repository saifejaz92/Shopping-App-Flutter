import 'package:flutter/material.dart';
import 'package:food_app/screens/get_started_screen/widgets/slider.dart';
import 'package:food_app/screens/home_page_screen/widgets/nav_bar.dart';
import '../../colors/colors.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 70, right: 20, left: 20),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.90,
                child: Column(
                  children: [
                    Container(
                      height: 170,
                      width: MediaQuery.of(context).size.width * 0.80,
                      child: const Row(
                        children: [
                          Text(
                            "Your holiday\nshopping\ndelivered to Screen\none",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: titleColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25, bottom: 20),
                      alignment: Alignment.topLeft,
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.80,
                      child: const Text(
                        "There's something for everyone\nto enjoy with Sweet Shop\nFavourites Screen 1",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: subtitleColor,
                        ),
                      ),
                    ),
                    const Sliders(),
                    Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.80,
                      margin: const EdgeInsets.only(top: 90),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyHomePage(),
                            ),
                          );
                        },
                        child: const ListTile(
                          title: Text(
                            "Get Started",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: txtColor,
                                fontSize: 20),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward,
                            size: 30,
                            color: txtColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
