import 'package:flutter/material.dart';
import 'package:wallpaperapp/views/home.dart';

void main() => runApp(MyApp());
//563492ad6f91700001000001d5f5bb29a9e2435fa597a71471e67cfe

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WallpaperHub',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

