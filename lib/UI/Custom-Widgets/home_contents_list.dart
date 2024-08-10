import 'package:flutter/material.dart';

class HomeContentsList extends StatelessWidget {
  const HomeContentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage("assets/cloth1.jpg"),
            ),
          ),
        ),
      ],
    );
  }
}
