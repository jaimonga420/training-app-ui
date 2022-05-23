import 'package:flutter/material.dart';
import 'package:training_app/screens/videos_info_screen.dart';

import 'screens/home_screen.dart';
import './screens/videos_info_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      routes: {
        '/videosinfo': (context) => VideosInfo(),
        '/home': (context) => Home(),
      },
    );
  }
}
