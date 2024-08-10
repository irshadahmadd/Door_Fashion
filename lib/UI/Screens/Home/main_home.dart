import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:door_fashion/UI/Screens/Favourate/favourate.dart';
import 'package:door_fashion/UI/Screens/Home/home.dart';
import 'package:door_fashion/UI/Screens/My%20Order/my_order.dart';
import 'package:door_fashion/UI/Screens/My%20Profile/my_profile.dart';
import 'package:door_fashion/UI/Screens/Search/search.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _HomeState();
}

class _HomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appbgColor,
          leading: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 50,
              ),
              CircleAvatar(
                backgroundColor: primeryColor,
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width / 22,
                  backgroundImage: const AssetImage("assets/cloth1.jpg"),
                ),
              ),
            ],
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Irshad",
                style: textfieldheadingStyle,
              ),
              Text(
                "Let's go shoping",
                style: apptextstyle,
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Search(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.search,
                    color: apptextcolor,
                    size: MediaQuery.of(context).size.width / 14,
                  ),
                ),
                Icon(
                  Icons.notifications_none,
                  color: apptextcolor,
                  size: MediaQuery.of(context).size.width / 14,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 30,
                )
              ],
            )
          ],
        ),
        backgroundColor: appbgColor,
        body: const TabBarView(
          children: [
            Home(),
            MyOrder(),
            Favourate(),
            MyProfile(),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: SizedBox(
          width: MediaQuery.of(context).size.width / 1,
          height: MediaQuery.of(context).size.height / 10,
          child: const TabBar(
            labelColor: primeryColor,
            unselectedLabelColor: apptextcolor,
            tabs: [
              Tab(
                text: "Home",
                icon: Icon(Icons.home_filled),
              ),
              Tab(
                text: "My Order",
                icon: Icon(Icons.shop),
              ),
              Tab(
                text: "Favorite",
                icon: Icon(Icons.favorite),
              ),
              Tab(
                text: "My Profile",
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
