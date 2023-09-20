import 'package:flutter/material.dart';
import 'package:food_app/screens/favourites_screen/favourite_provider.dart';
import 'package:provider/provider.dart';
import 'screens/get_started_screen/get_started_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavouriteProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Manrope'),
        title: 'Food App',
        home: const GetStartedScreen(),
      ),
    );
  }
}
