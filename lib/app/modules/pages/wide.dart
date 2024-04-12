import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:pahtan_24_items/app/data/my_helper.dart';

class Wide extends StatefulWidget {
  const Wide({super.key});

  @override
  State<Wide> createState() => _wideState();
}

class _wideState extends State<Wide> {
  bool isPlaying = false;
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer.newPlayer();

  @override
  void dispose() {
    super.dispose();
    assetsAudioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (isPlaying) {
            assetsAudioPlayer.stop();
          } else {
            assetsAudioPlayer.open(
              Audio("assets/l.ogg"),
              autoStart: true,
              showNotification: true,
            );
          }
          setState(() {
            isPlaying = !isPlaying;
          });
        },
        backgroundColor: Colors.brown[500],
        child: Icon(
          isPlaying ? Icons.stop : Icons.play_arrow,
          size: 50,
          color: Theme.of(context).primaryColor,
        ),
      ),
      body: FutureBuilder<String>(
        future: MyHelper().loadHtmlLong(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Html(data: snapshot.data),
            );
          } else if (snapshot.hasError) {
            return const Text('Error loading the HTML file.');
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
