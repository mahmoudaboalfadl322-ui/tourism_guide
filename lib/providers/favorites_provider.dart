import 'package:flutter/material.dart';
import '../models/attraction.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<Attraction> favorites = [];

  void favic(Attraction attraction) {
    if (favorites.contains(attraction)) {
      favorites.remove(attraction);
    } else {
      favorites.add(attraction);
    }
    notifyListeners();
  }
}
