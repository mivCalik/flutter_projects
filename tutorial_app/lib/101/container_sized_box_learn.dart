import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200, 
            child: Text('a'*100),
          ),
          SizedBox.shrink(),
          SizedBox.square(
            dimension: 100,
            child: Text('b'*50),
          ),
          Container(
            child: Text('This is my least favourite song...'),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(30),
            decoration: MyStyle2(), // iki şekilde de yapılabilir
            // diğeri decoration: MyStyle.hiDecoration
          ),
        ],
      ),
    );
  }
}

class MyStyle{
  static BoxDecoration hiDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: LinearGradient(colors: [Colors.pink, Colors.purple]),
    //border: Border.all(width: 10, color: Colors.white10),
    boxShadow: [BoxShadow(color: Colors.white60, blurRadius: 12)]
  );
}

class MyStyle2 extends BoxDecoration{
  MyStyle2():super(
    borderRadius: BorderRadius.circular(20),
    gradient: LinearGradient(colors: [Colors.pink, Colors.purple]),
    //border: Border.all(width: 10, color: Colors.white10),
    boxShadow: [BoxShadow(color: Colors.white60, blurRadius: 12)]
  );
}

