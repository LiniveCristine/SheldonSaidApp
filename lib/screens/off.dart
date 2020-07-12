import 'package:flutter/material.dart';
import '../main.dart';

class NoMoreQuotes extends StatefulWidget {
  @override
  _NoMoreQuotesState createState() => _NoMoreQuotesState();
}

class _NoMoreQuotesState extends State<NoMoreQuotes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            child: Image.asset("assets/images/interruptor1.png"),
          ),
          Text(
            'Ops, as frases acabaram...',
            style: TextStyle(
              color: Colors.black,
              fontSize: 19,
              wordSpacing: 2,
              height: 1.2,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            child: Icon(Icons.replay),
          )
        ],
      ),
    );
  }
}
