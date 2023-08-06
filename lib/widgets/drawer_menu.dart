import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    //Drawer genellikle uygulamanın üst çubuğunda bulunan bir menü simgesine (genellikle üç yatay çizgi veya hamburger simgesi olarak bilinir) tıklayarak açılır veya kaydırılarak açılır.
    return Drawer(
      backgroundColor: Colors.grey.withOpacity(0.7),
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey
                  .withOpacity(0.2), // Arka plan rengini burada değiştirin
            ),
            accountName: const Text('Batıkan DEMİRCİ'),
            accountEmail: const Text('batikandemirci@hotmail.com'),
            currentAccountPicture: Image.network(
                'https://avatars.akamai.steamstatic.com/6bcddca160599447d266f076fde861e67814cd41_full.jpg'),
            otherAccountsPictures: const <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('BD'),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('07'),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                InkWell(
                  //genellikle dokunmatik ekranlarda kullanıcı etkileşimini algılamak ve bu etkileşimlere geribildirim vermek için kullanılır.
                  onTap: () {
                    debugPrint('tıklandı');
                  },
                  splashColor: Colors.grey,
                  child: const ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Geliştirici website'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                const AboutListTile(
                  applicationName: 'outfitly',
                  applicationIcon: Icon(Icons.dangerous),
                  applicationVersion: '2.0',
                  applicationLegalese:
                      'Lisans hakları için aşağıdaki View licenses butonuna tıklayınız.',
                  icon: Icon(Icons.keyboard),
                  aboutBoxChildren: <Widget>[
                    Text('Child 1'),
                    Text('Child 2'),
                    Text('Child 3'),
                  ],
                  child: Text('Hakkımızda'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
