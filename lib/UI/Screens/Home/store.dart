import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:door_fashion/Core/Providers/selection_provider.dart';
import 'package:door_fashion/UI/Screens/Search/searching_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Store extends StatelessWidget {
  Store({super.key});
  bool colorBlue = true;
  final List<String> productsFilter = [
    "Main Page",
    "All Products",
    "Best Selling"
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<SelectionProvider>(
      builder: (context, pvalue, child) => Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchingScreen(),
                ),
              );
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          title: const Text(
            "Store",
            style: textfieldheadingStyle,
          ),
          actions: [
            const Icon(Icons.shop),
            SizedBox(
              width: MediaQuery.of(context).size.width / 30,
            )
          ],
        ),
        backgroundColor: appbgColor,
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
                                height:
                                    MediaQuery.of(context).size.height / 150,
                              ),
                              const Text("180 products 3.7k followers",
                                  style: apptextstyle),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(),
                          Container(
                            width: MediaQuery.of(context).size.width / 5,
                            height: MediaQuery.of(context).size.height / 25,
                            decoration: BoxDecoration(
                              color: primeryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Almarai",
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      pvalue.setPcolor();
                    },
                    child: SizedBox(
                      height: 30, // Adjust this height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productsFilter.length,
                        itemBuilder: (context, index) {
                          final filter = productsFilter[index];
                          return Container(
                            width: MediaQuery.of(context).size.width / 4,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: pvalue.colorBlue == true
                                  ? const Color.fromARGB(255, 185, 14, 14)
                                  : Colors.transparent,
                            ),
                            child: Center(child: Text(filter)),
                          );
                        },
                      ),
                    ),
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
                                        size:
                                            MediaQuery.of(context).size.width /
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
                                        size:
                                            MediaQuery.of(context).size.width /
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
                                        size:
                                            MediaQuery.of(context).size.width /
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
                                        size:
                                            MediaQuery.of(context).size.width /
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
                                        size:
                                            MediaQuery.of(context).size.width /
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
                                        size:
                                            MediaQuery.of(context).size.width /
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
      ),
    );
  }
}
