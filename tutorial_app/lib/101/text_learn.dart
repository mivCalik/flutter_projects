import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class TextView extends StatelessWidget {
  const TextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('data ',
              //maxLines: 2,
              overflow: TextOverflow.fade,
              /*style:TextStyle(
                letterSpacing: 2,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.lineThrough,
              )*/
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(color:Colors.yellow),
            ),
            Text('My data ',
              //maxLines: 2,
              overflow: TextOverflow.fade,
              style: ProjectStyles.welcome,
            ),
          ],
        )
        )
      );
  }
}


class ProjectStyles{
  static TextStyle welcome = TextStyle(
      letterSpacing: 2,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.lineThrough,
    );

}