import 'package:flutter/material.dart';

class SelectionProvider extends ChangeNotifier {
  double selectedPrice = 10.0;
  String? selectedColor;
  String? selectedLocation;
  int currentIndex = 0;
  final List<String> images = [
    "assets/electronics5.jpg",
    "assets/jewellery1.jpg",
    "assets/cloth3.jpg",
  ];
  bool colorBlue = true;

  void setSelectedPrice(double value) {
    selectedPrice = value;
    notifyListeners();
  }

  void setSelectedColor(String? color) {
    selectedColor = color;
    notifyListeners();
  }

  void setSelectedLocation(String? location) {
    selectedLocation = location;
    notifyListeners();
  }

  void setCurentIndex() {
    currentIndex = (currentIndex + 1) % images.length;
    notifyListeners();
  }

  void setPcolor() {
    colorBlue = !colorBlue;
    notifyListeners();
  }
}
