import 'package:flutter/material.dart';
import 'package:mux_player/mux_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

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
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Html5Player(
        playbackId: 'EcHgOK9coz5K4rjSwOkoE7Y7O01201YMIC200RI6lNxnhs',
      ),
    );
  }
}
