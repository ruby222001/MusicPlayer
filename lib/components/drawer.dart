import 'package:flutter/material.dart';
import 'package:musicplayer/pages/settings_page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.music_note,
                size: 40,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25),
            child: ListTile(
                title: const Text('H O M E'), 
                leading: const Icon(Icons.home),
                 onTap: () => Navigator.pop(context)
                 ),
          ),
            Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25),
            child: ListTile(
                title: const Text('S E T T I N G S '), 
                leading: const Icon(Icons.settings),
                 onTap: (){ Navigator.pop(context);
                 Navigator.push(context,MaterialPageRoute(builder:(context)=> const Settings(),
                 ),
                 );
                 }
                 ),
          )
        ],
      ),
    );
  }
}
