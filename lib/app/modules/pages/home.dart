import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:pahtan_24_items/app/data/my_helper.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _nameState();
}

class _nameState extends State<Home> {
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
              Audio("assets/s.mp3"),
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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "ပစ္စယုဒ္ဒေသပါဠိ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("--------------------"),
              const SizedBox(
                height: 10,
              ),
              Text(
                MyHelper.short(),
                style: const TextStyle(
                    fontSize: 19, fontWeight: FontWeight.bold, height: 2.0),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
