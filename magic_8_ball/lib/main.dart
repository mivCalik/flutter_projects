import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

    class BallPage extends StatelessWidget {
      const BallPage({super.key});
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Ask Me Anything',
              style: TextStyle(color: Colors.white
              ),
            ),
            backgroundColor: Color.fromARGB(255, 17, 76, 124),
          ),
          backgroundColor: Colors.blue,
          body: Ball(),

        );
      }
    }

    class Ball extends StatefulWidget {
      const Ball({super.key});
    
      @override
      State<Ball> createState() => _BallState();
    }
    
    class _BallState extends State<Ball> {
      int ball_num = 1;

    void shakeTheBall(){
      setState(() {
        ball_num = Random().nextInt(5) + 1;
      });
      print(ball_num);
    }

      @override
      Widget build(BuildContext context) {
        return Center(
          child: TextButton(
            onPressed: () => shakeTheBall(),
            child: Image.asset('images/ball$ball_num.png')
            )
          );
      }
    }