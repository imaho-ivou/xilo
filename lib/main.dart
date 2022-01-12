import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Joue un morceaux'), centerTitle: true),
        body: Xilo(),
      ),
    );
  }
}

class Xilo extends StatefulWidget {
  const Xilo({Key? key}) : super(key: key);

  @override
  _XiloState createState() => _XiloState();
}

class _XiloState extends State<Xilo> {
  @override
  late AudioPlayer player;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                onPressed: () async {
                  await player.setAsset('assets/audio/note1.wav');
                  player.play();
                },
                child: Text(''),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange),
                ),
                onPressed: () async {
                  await player.setAsset('assets/audio/note2.wav');
                  player.play();
                },
                child: Text(''),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow),
                ),
                onPressed: () async {
                  await player.setAsset('assets/audio/note3.wav');
                  player.play();
                },
                child: Text(''),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightGreen),
                ),
                onPressed: () async {
                  await player.setAsset('assets/audio/note4.wav');
                  player.play();
                },
                child: Text(''),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () async {
                  await player.setAsset('assets/audio/note5.wav');
                  player.play();
                },
                child: Text(''),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () async {
                  await player.setAsset('assets/audio/note6.wav');
                  player.play();
                },
                child: Text(''),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple),
                ),
                onPressed: () async {
                  await player.setAsset('assets/audio/note7.wav');
                  player.play();
                },
                child: Text(''),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
