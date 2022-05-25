import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/videos_info_screen.dart';

import 'screens/home_screen.dart';
import './providers/videoplayer_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => VideoPlayerProvider())],
    child: const MyApp(),
  ));
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
        '/videosinfo': (context) => const VideosInfo(),
        '/home': (context) => const Home(),
      },
    );
  }
}
