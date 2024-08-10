import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:door_fashion/UI/Screens/Home/category.dart';
import 'package:door_fashion/UI/Screens/Home/homethird.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 20,
        backgroundColor: appbgColor,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.transparent,
          size: 0,
        ),
        leadingWidth: 0,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: "Home"),
            Tab(text: "Catagory"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [Homethird(), Category()],
      ),
    );
  }
}
