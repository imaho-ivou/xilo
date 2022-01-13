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

  var couleur = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.lightGreen,
    Colors.blue,
    Colors.purple
  ];
  var music = [
    'assets/audio/note1.wav',
    'assets/audio/note2.wav',
    'assets/audio/note3.wav',
    'assets/audio/note4.wav',
    'assets/audio/note5.wav',
    'assets/audio/note6.wav',
    'assets/audio/note7.wav'
  ];

  bouton(Color? couleur, String music) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(couleur!),
          ),
          onPressed: () {
            player.setAsset(music);
            player.play();
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          bouton(couleur[0], music[0]),
          bouton(couleur[1], music[2]),
          bouton(couleur[3], music[3]),
          bouton(couleur[4], music[4]),
          bouton(couleur[5], music[5]),
          bouton(couleur[6], music[6]),
          bouton(couleur[7], music[7]),
        ],
      ),
    );
  }
}
