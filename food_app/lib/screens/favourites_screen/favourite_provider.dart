import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteProvider extends ChangeNotifier {
  static List _pro = [];
  List get shoppingList => _pro;

  void toggleFavorite(String product) {
    final isExist = _pro.contains(product);
    if (isExist) {
      _pro.remove(product);
    } else {
      _pro.add(product);
    }
    notifyListeners();
  }

  bool isExist(String product) {
    final isExist = _pro.contains(product);
    return isExist;
  }

  void clearFavorite() {
    _pro = [];
    notifyListeners();
  }

  static FavouriteProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<FavouriteProvider>(
      context,
      listen: listen,
    );
  }
}
