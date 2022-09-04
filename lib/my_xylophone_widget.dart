// ignore: import_of_legacy_library_into_null_safe
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class MyXylophoneWidget extends StatelessWidget {
  const MyXylophoneWidget({super.key});

  void soundPlayed(int? soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int? soundNumber, Color? color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          soundPlayed(soundNumber);
        },
        child: Container(color: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildKey(soundNumber: 1, color: Colors.red),
        buildKey(soundNumber: 2, color: Colors.orange),
        buildKey(soundNumber: 3, color: Colors.blue),
        buildKey(soundNumber: 4, color: Colors.teal),
        buildKey(soundNumber: 5, color: Colors.yellow),
        buildKey(soundNumber: 6, color: Colors.white),
        buildKey(soundNumber: 7, color: Colors.green),
      ],
    );
  }
}
