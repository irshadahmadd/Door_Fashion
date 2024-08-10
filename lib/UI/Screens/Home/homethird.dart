import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:door_fashion/Core/Providers/selection_provider.dart';
import 'package:flutter/material.dart';

class Homethird extends StatefulWidget {
  const Homethird({super.key});

  @override
  State<Homethird> createState() => _HomethirdState();
}

class _HomethirdState extends State<Homethird> {
  SelectionProvider selectionProvider = SelectionProvider();

  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startImageAnimation();
  }

  void _startImageAnimation() {
    selectionProvider.setCurentIndex();
    Future.delayed(const Duration(seconds: 3), () {
      _pageController.animateToPage(
        selectionProvider.currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      _startImageAnimation(); // Repeat the animation
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 5,
              child: PageView.builder(
                controller: _pageController,
                itemCount: selectionProvider.images.length,
                itemBuilder: (context, index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(selectionProvider.images[index]),
                        fit: BoxFit.cover,
                        colorFilter: const ColorFilter.linearToSrgbGamma(),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                    ),
                    child: const Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Shoping today FLAT 50% \n off on all types of \n products",
                            style: productsTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Choose your choice",
                            style: apptextstyle,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                },
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
                          image: AssetImage("assets/jewellery1.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: primeryColor,
                      ),
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
                              radius: MediaQuery.of(context).size.width / 30,
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.black26,
                                  size: MediaQuery.of(context).size.width / 20,
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
                          image: AssetImage("assets/jewellery7.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: primeryColor,
                      ),
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
                              radius: MediaQuery.of(context).size.width / 30,
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.black26,
                                  size: MediaQuery.of(context).size.width / 20,
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
                          image: AssetImage("assets/cloth3.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: primeryColor,
                      ),
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
                              radius: MediaQuery.of(context).size.width / 30,
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.black26,
                                  size: MediaQuery.of(context).size.width / 20,
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
                          image: AssetImage("assets/cloth2.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: primeryColor,
                      ),
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
                              radius: MediaQuery.of(context).size.width / 30,
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.black26,
                                  size: MediaQuery.of(context).size.width / 20,
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
                          image: AssetImage("assets/shoes4.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: primeryColor,
                      ),
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
                              radius: MediaQuery.of(context).size.width / 30,
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.black26,
                                  size: MediaQuery.of(context).size.width / 20,
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
                          image: AssetImage("assets/shoes3.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: primeryColor,
                      ),
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
                              radius: MediaQuery.of(context).size.width / 30,
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.black26,
                                  size: MediaQuery.of(context).size.width / 20,
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
    );
  }
}
