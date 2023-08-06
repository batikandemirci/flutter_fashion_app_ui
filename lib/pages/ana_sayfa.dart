import 'package:flutter/material.dart';
import 'package:flutter_moda_app/pages/detay_sayfa.dart';
import 'package:screenshot/screenshot.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late ScreenshotController screenshotController;
  List<bool> followStatusList = [false, false, false, false, false, false];
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    screenshotController = ScreenshotController();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          //üst taraftaki profil listesi
          Container(
            color: Colors.transparent,
            height: 150,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg', 0),
                const SizedBox(
                  width: 30,
                ),
                listeElemani(
                    'assets/model2.jpeg', 'assets/louisvuitton.jpg', 1),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png', 2),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg', 3),
                const SizedBox(
                  width: 30,
                ),
                listeElemani(
                    'assets/model2.jpeg', 'assets/louisvuitton.jpg', 4),
                const SizedBox(
                  width: 30,
                ),
                listeElemani('assets/model3.jpeg', 'assets/chloelogo.png', 5),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),

          //Card
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.transparent,
              child: Container(
                height: 600,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              image: const DecorationImage(
                                  image: AssetImage('assets/model1.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(width: 10),
                        // ignore: sized_box_for_whitespace
                        Container(
                          width: MediaQuery.of(context).size.width -
                              160, //mümkün olan bütün değeri kullan demek
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Model",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "31 mins ago",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 22,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'This official website features a ribbed knit zipper jacket that is'
                      'modern and stylish. It looks very temparament and is recommend to friends',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Detay(
                                modelImagePath: 'assets/modelgrid1.jpeg',
                                dressImagePath: 'assets/dress.jpg',
                              ),
                            ));
                          },
                          child: Hero(
                            tag: 'assets/modelgrid1.jpeg',
                            child: Container(
                              height: 320,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  image: AssetImage('assets/modelgrid1.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              //containeri ınkwell ile sarmamızın sebebi tıklama özelliği
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Detay(
                                    modelImagePath: 'assets/modelgrid2.jpeg',
                                    dressImagePath: 'assets/dress2.jpg',
                                  ),
                                ));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                  height: 155,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid2.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Detay(
                                    modelImagePath: 'assets/modelgrid3.jpeg',
                                    dressImagePath: 'assets/dress3.jpg',
                                  ),
                                ));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid3.jpeg',
                                child: Container(
                                  height: 155,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid3.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: const Center(
                            child: Text(
                              '# Louis Vuitton',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: const Center(
                            child: Text(
                              '# Chloe',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.reply,
                          color: Colors.brown.withOpacity(0.2),
                          size: 28,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '3.1k',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 17,
                              color: Colors.grey.shade500),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.mode_comment,
                          color: Colors.brown.withOpacity(0.2),
                          size: 23,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '69',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 17,
                              color: Colors.grey.shade500),
                        ),
                        const SizedBox(
                          width: 164,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red.withOpacity(0.7),
                          size: 23,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '444',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 17,
                              color: Colors.grey.shade500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          //Card 2
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.transparent,
              child: Container(
                height: 600,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              image: const DecorationImage(
                                  image: AssetImage('assets/model3.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(width: 10),
                        // ignore: sized_box_for_whitespace
                        Container(
                          width: MediaQuery.of(context).size.width -
                              160, //mümkün olan bütün değeri kullan demek
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Model 3",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "69 mins ago",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 22,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'This official website features a ribbed knit zipper jacket that is'
                      'modern and stylish. It looks very temparament and is recommend to friends',
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Detay(
                                modelImagePath: 'assets/modelgrid3.jpeg',
                                dressImagePath: 'assets/dress3.jpg',
                              ),
                            ));
                          },
                          child: Hero(
                            tag: 'assets/modelgrid1.jpeg',
                            child: Container(
                              height: 320,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  image: AssetImage('assets/modelgrid3.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              //containeri ınkwell ile sarmamızın sebebi tıklama özelliği
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Detay(
                                    modelImagePath: 'assets/modelgrid1.jpeg',
                                    dressImagePath: 'assets/dress.jpg',
                                  ),
                                ));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                  height: 155,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid1.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Detay(
                                    modelImagePath: 'assets/modelgrid2.jpeg',
                                    dressImagePath: 'assets/dress2.jpg',
                                  ),
                                ));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                  height: 155,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/modelgrid2.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: const Center(
                            child: Text(
                              '# Louis Vuitton',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2)),
                          child: const Center(
                            child: Text(
                              '# Chloe',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.reply,
                          color: Colors.brown.withOpacity(0.2),
                          size: 28,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '3.1k',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 17,
                              color: Colors.grey.shade500),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.mode_comment,
                          color: Colors.brown.withOpacity(0.2),
                          size: 23,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '69',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 17,
                              color: Colors.grey.shade500),
                        ),
                        const SizedBox(
                          width: 164,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red.withOpacity(0.7),
                          size: 23,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '444',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 17,
                              color: Colors.grey.shade500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath, int index) {
    return Column(
      children: [
        //Stack child widget'ları üst üste düzenlemek için kullanılan bir layout widget'ıdır.
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              //kısaca padding le uğraştırmadan kolayca pozisyonlamamızı sağlıyor.
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            setState(() {
              // Takip durumunu tersine çevir
              followStatusList[index] = !followStatusList[index];
            });
          },
          child: Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: followStatusList[index] ? Colors.green : Colors.brown,
            ),
            child: Center(
              child: Text(
                followStatusList[index] ? 'Following' : 'Follow',
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
