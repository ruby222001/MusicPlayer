import 'package:flutter/material.dart';
import 'package:musicplayer/components/drawer.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title:const Text("play"),),
      drawer: const MyDrawer(),
    );
  }
}