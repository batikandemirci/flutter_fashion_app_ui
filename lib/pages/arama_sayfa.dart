import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

class Arama extends StatefulWidget {
  const Arama({super.key});

  @override
  State<Arama> createState() => _AramaState();
}

class _AramaState extends State<Arama> {
  late ScreenshotController screenshotController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 7),
            width: 375,
            height: 100,
            child: const TextField(
              decoration: InputDecoration(
                labelText: "Search outfit",
                labelStyle: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 15, color: Colors.grey),
                hintText: "Write here",
                hintStyle: TextStyle(
                    fontFamily: 'Montserrat', fontSize: 15, color: Colors.grey),
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
    );
  }
}
