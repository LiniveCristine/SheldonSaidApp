import 'package:flutter/material.dart';
import 'package:sheldon_said/screens/home_page.dart';

void main() => runApp(SheldondSaid());

class SheldondSaid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sheldon Disse',
      home: HomePage(),
    );
  }
}
