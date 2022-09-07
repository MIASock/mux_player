import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class Html5Player extends StatefulWidget {
  const Html5Player({
    this.height = double.maxFinite,
    this.width = double.maxFinite,
    required this.playbackId,
    this.streamType,
    this.videoTitle,
    this.viewerUserId,
    this.primaryColor = 'burlywood',
    this.secondaryColor = '#383838',
    this.muted = true,
    this.crossOrigin = 'anonymous',
    this.startTime,
    Key? key,
  }) : super(key: key);

  ///
  /// `playbackId` is  video play back id from mux.
  ///
  final String playbackId;

  ///
  ///
  ///
  final String? streamType;

  ///
  ///
  final String? videoTitle;

  ///
  ///
  ///
  final String? viewerUserId;

  ///
  ///
  final String? primaryColor;

  ///
  final String? secondaryColor;

  ///
  final bool? muted;

  ///
  final String? crossOrigin;

  ///
  final double? startTime;

  ///
  final double height;

  ///
  final double width;

  @override
  State<Html5Player> createState() => _Html5PlayerState();
}

class _Html5PlayerState extends State<Html5Player> {
  late WebViewXController webviewController;

  late Widget body;

  @override
  void initState() {
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
      stream-type= ${widget.streamType}
      playback-id= ${widget.playbackId}
      metadata-video-title=${widget.videoTitle}
      metadata-viewer-user-id= ${widget.viewerUserId}
      primary-color= ${widget.primaryColor}
      secondary-color=${widget.secondaryColor}
      muted=${widget.muted}
      crossOrigin=${widget.crossOrigin}
      forward-seek-offset="15"
      backward-seek-offset="15"
      start-time=${widget.startTime}
    ></mux-player>

  </body>
</html>
  ''';
    body = WebViewX(
      height: widget.height,
      width: widget.width,
      initialContent: initialHtmlSource,
      initialSourceType: SourceType.html,
      onWebViewCreated: (controller) => webviewController = controller,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return body;
  }
}
