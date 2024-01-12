import 'package:flutter/material.dart';
import 'package:musicplayer/pages/home_page.dart';
import 'package:musicplayer/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create:(context) => ThemeProvider(),
    child: const MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

