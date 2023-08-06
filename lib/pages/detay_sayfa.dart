// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  final String modelImagePath;
  final String dressImagePath;
  const Detay({
    Key? key,
    required this.modelImagePath,
    required this.dressImagePath,
  }) : super(key: key);
  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Bir önceki sayfaya dön
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "outfitly",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 35,
            color: Colors.black87,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),
      body: Stack(
        children: [
          Hero(
            tag: widget.modelImagePath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.modelImagePath),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 25,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 10,
              child: Container(
                height: 240,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            image: DecorationImage(
                              image: AssetImage(widget
                                  .dressImagePath), // Parametre olarak gönderilen elbise resmi
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "LAMINATED",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Louis Vuitton ",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 35,
                            width: MediaQuery.of(context).size.width - 180,
                            child: const Text(
                              "One button V-neck sling long-sleeved waist female stitching dress",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '\$ 7000',
                          style:
                              TextStyle(fontFamily: 'Montserrat', fontSize: 22),
                        ),
                        Container(
                          width: 55, // İstediğiniz genişliği ayarlayın
                          height: 55, // İstediğiniz yüksekliği ayarlayın
                          margin: const EdgeInsets.only(right: 9, bottom: 2),
                          child: FloatingActionButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30), // İstediğiniz yuvarlaklık değerini ayarlayın
                            ),
                            onPressed: () {},
                            backgroundColor: Colors.brown.withOpacity(0.8),
                            child: const Center(
                                child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
