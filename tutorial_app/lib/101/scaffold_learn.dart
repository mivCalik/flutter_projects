import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hey gorgeous'),
        backgroundColor: Colors.amber[800],
      ),
      body: Text('Whad u duin..', style: TextStyle(fontSize:26, color: Colors.amber[900]),),
      backgroundColor: Colors.amber,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label:'account'),
        ],
        ),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: Icon(Icons.abc),
          ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}