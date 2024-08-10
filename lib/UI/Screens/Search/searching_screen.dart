import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:door_fashion/UI/Screens/Search/search.dart';
import 'package:door_fashion/UI/Screens/Search/search_filter.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchingScreen extends StatelessWidget {
  SearchingScreen({super.key});
  TextEditingController searchingController = TextEditingController();
  final GlobalKey<FormState> _serchingFormKey = GlobalKey<FormState>();
  void _serchFilterPopUp(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return const SearchFilter();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appbgColor,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        leading: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Search(),
                ),
              );
            },
            child: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Container(
          height: MediaQuery.of(context).size.height / 20,
          width: MediaQuery.of(context).size.width / 1.3,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: apptextcolor),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 50,
              ),
              Form(
                key: _serchingFormKey,
                child: Expanded(
                  child: TextFormField(
                    controller: searchingController,
                    decoration: InputDecoration(
                        suffixIcon: InkWell(
                            onTap: () {
                              _serchFilterPopUp(context);
                            },
                            child: const Icon(Icons.filter_list_alt)),
                        hintText: "Search",
                        hintStyle: const TextStyle(color: apptextcolor),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: MediaQuery.of(context).size.height / 1,
          color: appbgColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 25,
                        decoration: BoxDecoration(
                          color: primeryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 30),
                          child: const Center(
                            child: Text(
                              "All",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 40,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 25,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 30),
                          child: const Center(
                            child: Text(
                              "Jewellery",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 40,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 25,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 30),
                          child: const Center(
                            child: Text(
                              "Electronic",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 40,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 25,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 30),
                          child: const Center(
                            child: Text(
                              "Showes",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 40,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 25,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width / 30),
                          child: const Center(
                            child: Text(
                              "Bags",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.width / 10,
                          backgroundImage:
                              const AssetImage("assets/model4.jpg"),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "UPBOX",
                              style: productsTextStyle,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 150,
                            ),
                            const Text("180 products 3.7k followers",
                                style: apptextstyle),
                          ],
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        SizedBox(),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          height: MediaQuery.of(context).size.height / 6,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/jewellery1.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                              color: primeryColor),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(),
                              Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 30),
                                child: CircleAvatar(
                                  backgroundColor: appbgColor,
                                  radius:
                                      MediaQuery.of(context).size.width / 30,
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.black26,
                                      size: MediaQuery.of(context).size.width /
                                          20,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        const Text(
                          "The Mirac Sose",
                          style: productsTextStyle,
                        ),
                        const Text("Resonable Sose", style: apptextstyle),
                        const Text(
                          "\$190.99",
                          style: productsTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          height: MediaQuery.of(context).size.height / 6,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/jewellery7.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                              color: primeryColor),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(),
                              Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 30),
                                child: CircleAvatar(
                                  backgroundColor: appbgColor,
                                  radius:
                                      MediaQuery.of(context).size.width / 30,
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.black26,
                                      size: MediaQuery.of(context).size.width /
                                          20,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        const Text(
                          "The Mirac Sose",
                          style: productsTextStyle,
                        ),
                        const Text("Resonable Sose", style: apptextstyle),
                        const Text(
                          "\$190.99",
                          style: productsTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          height: MediaQuery.of(context).size.height / 6,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/cloth3.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                              color: primeryColor),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(),
                              Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 30),
                                child: CircleAvatar(
                                  backgroundColor: appbgColor,
                                  radius:
                                      MediaQuery.of(context).size.width / 30,
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.black26,
                                      size: MediaQuery.of(context).size.width /
                                          20,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        const Text(
                          "The Mirac Sose",
                          style: productsTextStyle,
                        ),
                        const Text("Resonable Sose", style: apptextstyle),
                        const Text(
                          "\$190.99",
                          style: productsTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          height: MediaQuery.of(context).size.height / 6,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/cloth2.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                              color: primeryColor),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(),
                              Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 30),
                                child: CircleAvatar(
                                  backgroundColor: appbgColor,
                                  radius:
                                      MediaQuery.of(context).size.width / 30,
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.black26,
                                      size: MediaQuery.of(context).size.width /
                                          20,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        const Text(
                          "The Mirac Sose",
                          style: productsTextStyle,
                        ),
                        const Text("Resonable Sose", style: apptextstyle),
                        const Text(
                          "\$190.99",
                          style: productsTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          height: MediaQuery.of(context).size.height / 6,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/shoes4.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                              color: primeryColor),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(),
                              Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 30),
                                child: CircleAvatar(
                                  backgroundColor: appbgColor,
                                  radius:
                                      MediaQuery.of(context).size.width / 30,
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.black26,
                                      size: MediaQuery.of(context).size.width /
                                          20,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        const Text(
                          "The Mirac Sose",
                          style: productsTextStyle,
                        ),
                        const Text("Resonable Sose", style: apptextstyle),
                        const Text(
                          "\$190.99",
                          style: productsTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          height: MediaQuery.of(context).size.height / 6,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/shoes3.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                              color: primeryColor),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(),
                              Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width / 30),
                                child: CircleAvatar(
                                  backgroundColor: appbgColor,
                                  radius:
                                      MediaQuery.of(context).size.width / 30,
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.black26,
                                      size: MediaQuery.of(context).size.width /
                                          20,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        const Text(
                          "The Mirac Sose",
                          style: productsTextStyle,
                        ),
                        const Text("Resonable Sose", style: apptextstyle),
                        const Text(
                          "\$190.99",
                          style: productsTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
