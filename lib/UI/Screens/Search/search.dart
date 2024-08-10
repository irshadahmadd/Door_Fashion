import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:door_fashion/UI/Screens/Home/main_home.dart';
import 'package:door_fashion/UI/Screens/Search/searching_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Search extends StatelessWidget {
  Search({super.key});
  TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> _serchFormKey = GlobalKey<FormState>();

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
                  builder: (context) => const MainHome(),
                ),
              );
            },
            child: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Container(
          height: MediaQuery.of(context).size.height / 25,
          width: MediaQuery.of(context).size.width / 1.3,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: apptextcolor),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 90,
              ),
              Form(
                key: _serchFormKey,
                child: Expanded(
                  child: TextFormField(
                    controller: searchController,
                    decoration: InputDecoration(
                        suffixIcon: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchingScreen(),
                                ),
                              );
                            },
                            child: const Icon(Icons.search)),
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest Search",
                      style: textfieldheadingStyle,
                    ),
                    Text(
                      "Clear All",
                      style: TextStyle(
                        color: primeryColor,
                        fontFamily: "Amarai",
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 25,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: apptextcolor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 30),
                        child: Center(
                          child: Row(
                            children: [
                              const Text(
                                "Electronic",
                                style: apptextstyle,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 30,
                              ),
                              Icon(
                                Icons.cancel,
                                size: MediaQuery.of(context).size.width / 20,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 25,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: apptextcolor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 30),
                        child: Center(
                          child: Row(
                            children: [
                              const Text(
                                "Bags",
                                style: apptextstyle,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 30,
                              ),
                              Icon(
                                Icons.cancel,
                                size: MediaQuery.of(context).size.width / 20,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 25,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: apptextcolor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 30),
                        child: Center(
                          child: Row(
                            children: [
                              const Text(
                                "Three Seconds",
                                style: apptextstyle,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 30,
                              ),
                              Icon(
                                Icons.cancel,
                                size: MediaQuery.of(context).size.width / 20,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 25,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: apptextcolor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 30),
                        child: Center(
                          child: Row(
                            children: [
                              const Text(
                                "Long Shirts",
                                style: apptextstyle,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 30,
                              ),
                              Icon(
                                Icons.cancel,
                                size: MediaQuery.of(context).size.width / 20,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Papulor Search",
                      style: headingStyle,
                    ),
                    SizedBox()
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.height / 9,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/jewellery7.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                              color: primeryColor),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "The Mirac Sose",
                              style: productsTextStyle,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 150,
                            ),
                            const Text("Resonable Sose", style: apptextstyle),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(),
                        Container(
                          height: MediaQuery.of(context).size.height / 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 238, 146, 207)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 30),
                            child: const Center(
                              child: Row(
                                children: [
                                  Text(
                                    "New",
                                    style: apptextstyle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.height / 9,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/jewellery3.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                              color: primeryColor),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Outstandings",
                              style: productsTextStyle,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 150,
                            ),
                            const Text("Resonable Sose", style: apptextstyle),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(),
                        Container(
                          height: MediaQuery.of(context).size.height / 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 238, 230, 116)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 30),
                            child: const Center(
                              child: Row(
                                children: [
                                  Text(
                                    "Previous",
                                    style: apptextstyle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.height / 9,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/jewellery7.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                              color: primeryColor),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "The Mirac Sose",
                              style: productsTextStyle,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 150,
                            ),
                            const Text("Resonable Sose", style: apptextstyle),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(),
                        Container(
                          height: MediaQuery.of(context).size.height / 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 238, 146, 207)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 30),
                            child: const Center(
                              child: Row(
                                children: [
                                  Text(
                                    "New",
                                    style: apptextstyle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.height / 9,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/jewellery3.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                              color: primeryColor),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Outstandings",
                              style: productsTextStyle,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 150,
                            ),
                            const Text("Resonable Sose", style: apptextstyle),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(),
                        Container(
                          height: MediaQuery.of(context).size.height / 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 238, 230, 116)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 30),
                            child: const Center(
                              child: Row(
                                children: [
                                  Text(
                                    "Previous",
                                    style: apptextstyle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
