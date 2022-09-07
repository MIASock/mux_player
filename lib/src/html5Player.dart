import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class Html5Player extends StatefulWidget {
  const Html5Player({super.key});

  @override
  State<Html5Player> createState() => _Html5PlayerState();
}

class _Html5PlayerState extends State<Html5Player> {
  late WebViewXController webviewController;
  String initialHtmlSource = ''' 
  <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Testing Mux Player</title>
  
  </head>
  <body style="overflow:hidden; margin:0">
    <script src="https://unpkg.com/@mux/mux-player"></script>
    
    <mux-player style="height: 100vh;width: 100vw"
      stream-type="on-demand"
      playback-id="EcHgOK9coz5K4rjSwOkoE7Y7O01201YMIC200RI6lNxnhs"
      metadata-video-title="Test On Demand"
      metadata-viewer-user-id="user-id-007"
      primary-color="burlywood"
      secondary-color="#383838"
      muted="true"
      crossOrigin="anonymous"
      forward-seek-offset="15"
      backward-seek-offset="15"
      start-time="30"
    ></mux-player>

  </body>
</html>
  ''';

  late Widget body;

  @override
  void initState() {
    body = WebViewX(
      height: double.maxFinite,
      width: double.maxFinite,
      initialContent: initialHtmlSource,
      initialSourceType: SourceType.html,
      onWebViewCreated: (controller) => webviewController = controller,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
    );
  }
}
