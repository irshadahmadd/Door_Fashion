import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:door_fashion/Core/Providers/selection_provider.dart';
import 'package:door_fashion/UI/Custom-Widgets/app_button.dart';
import 'package:door_fashion/UI/Screens/Home/store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> colors = ['Red', 'Blue', 'Green', 'Yellow'];
    final List<String> locations = [
      'New York',
      'Los Angeles',
      'Chicago',
    ];
    int getColorFromName(String colorName) {
      switch (colorName) {
        case 'Red':
          return 0xFFFF0000; // Hex code for red
        case 'Blue':
          return 0xFF0000FF; // Hex code for blue
        case 'Green':
          return 0xFF00FF00; // Hex code for green
        case 'Yellow':
          return 0xFFFFFF00; // Hex code for yellow
        default:
          return 0xFFFFFFFF; // Default to white if color name is not found
      }
    }

    return Consumer<SelectionProvider>(
      builder: (context, selectionProvider, child) => Container(
        height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width / 1,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 80,
                width: MediaQuery.of(context).size.width / 5,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              const Text(
                "Filter by",
                style: textfieldheadingStyle,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price",
                    style: textfieldheadingStyle,
                  ),
                  Text(
                    "0\$ to 80\$",
                    style: textfieldheadingStyle,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Slider(
                      activeColor: primeryColor,
                      thumbColor: primeryColor,
                      inactiveColor: apptextcolor,
                      secondaryActiveColor: Colors.black,
                      value: selectionProvider.selectedPrice,
                      min: 0,
                      max: 80.0,
                      divisions: 4,
                      label: selectionProvider.selectedPrice.round().toString(),
                      onChanged: (value) {
                        selectionProvider.setSelectedPrice(value);
                      },
                    ),
                  ),
                  Text(
                    '\$${selectionProvider.selectedPrice.round()}',
                    style: textfieldheadingStyle,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Color",
                    style: textfieldheadingStyle,
                  ),
                  Text(
                    "${selectionProvider.selectedColor}",
                    style: textfieldheadingStyle,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              Wrap(
                spacing: MediaQuery.of(context).size.width / 6,
                children: colors.map((color) {
                  return GestureDetector(
                    onTap: () {
                      selectionProvider.setSelectedColor(
                          selectionProvider.selectedColor == color
                              ? null
                              : color);
                    },
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 25,
                      backgroundColor: Color(getColorFromName(color)),
                      child: Center(
                        child: Icon(
                          Icons.check,
                          color: selectionProvider.selectedColor == color
                              ? const Color.fromARGB(255, 0, 0, 0)
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Location",
                    style: textfieldheadingStyle,
                  ),
                  Text(
                    "${selectionProvider.selectedLocation}",
                    style: textfieldheadingStyle,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Wrap(
                spacing: MediaQuery.of(context).size.width / 20,
                children: locations.map((location) {
                  return ChoiceChip(
                    label: Text(location),
                    selected: selectionProvider.selectedLocation == location,
                    onSelected: (selected) {
                      selectionProvider
                          .setSelectedLocation(selected ? location : null);
                    },
                    side: BorderSide.none,
                    selectedColor: primeryColor,
                    backgroundColor: Colors.grey.shade200,
                    labelStyle: TextStyle(
                      color: selectionProvider.selectedLocation == location
                          ? Colors.white
                          : const Color.fromARGB(255, 0, 0, 0),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              AppButton(
                ontap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Store(),
                    ),
                  );
                },
                title: "Apply Filter",
              )
            ],
          ),
        ),
      ),
    );
  }
}
