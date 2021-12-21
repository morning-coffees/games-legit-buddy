import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage('assets/images/cabal.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(''),
          ),
          ListTile(
            leading: const IconTheme(
              data: IconThemeData(color: Colors.red),
              child: Icon(Icons.restore_from_trash_rounded),
            ),
            title: const Text(
              'Scammers',
              style: TextStyle(color: Colors.redAccent),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const IconTheme(
              data: IconThemeData(color: Colors.blueAccent),
              child: Icon(Icons.check),
            ),
            title: const Text(
              'Legit Sellers',
              style: TextStyle(color: Colors.blueAccent),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
