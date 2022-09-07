import 'package:flutter/material.dart';
import 'package:mux_player/mux_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VideoScreen(),
    );
  }
}

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Html5Player(),
    );
  }
}
