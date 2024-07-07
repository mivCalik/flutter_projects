import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  
  void playSound(int num){
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
        Audio("assets/note$num.wav"),
    );
  }
  
  Expanded buildKey(color, num){
    return Expanded(
      child: ElevatedButton(
        onPressed: (){playSound(num);
        },
        
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          backgroundColor: color
        ),
        child: Text('Click Me !'),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.red, 1),
                buildKey(Colors.orange,2),
                buildKey(Colors.yellow,3),
                buildKey(Colors.green,4),
                buildKey(Colors.teal, 5),
                buildKey(Colors.blue,6),
                buildKey(Colors.purple,7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
