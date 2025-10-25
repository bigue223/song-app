import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const SongApp());
}

class SongApp extends StatefulWidget {
  const SongApp({super.key});

  @override
  State<SongApp> createState() => _SongAppState();
}

class _SongAppState extends State<SongApp> {
  final AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple.shade200,
        appBar: AppBar(
          title: Text('music app'),
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 32.0,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    player.stop();
                    player.play(AssetSource("mm/light.mp3"));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.music_note,
                        color: const Color.fromARGB(255, 17, 16, 16),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'light',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 122, 205, 67),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 32.0,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    player.stop();
                    player.play(AssetSource("mm/L.mp3"));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.music_note,
                        color: const Color.fromARGB(255, 14, 14, 14),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'L',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 99, 7, 228),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 32.0,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    player.stop();
                    player.play(AssetSource("mm/kira.mp3"));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.music_note,
                        color: const Color.fromARGB(255, 6, 6, 6),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'kira',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 204, 4, 4),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 32.0,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    player.stop();
                    player.play(AssetSource("mm/ryuuk.mp3"));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.music_note,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'ryuk',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 22, 29, 170),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 32.0,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    player.stop();
                    player.play(AssetSource("mm/writting.mp3"));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.music_note,
                        color: const Color.fromARGB(255, 4, 4, 4),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'writting',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 19, 153, 151),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 80.0,
                ),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size.fromHeight(40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    elevation: 6,
                  ),
                  icon: const Icon(Icons.stop),
                  label: const Text(
                    'Stop',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    player.stop();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
