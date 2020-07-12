import 'package:flutter/material.dart';

import '../quotes.dart';

class QuotePage extends StatefulWidget {
  @override
  _QuotePageState createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  int selectedQuote = 0;

  void nextQuote() {
    setState(() {
      selectedQuote++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 90,
            //margin: EdgeInsets.symmetric(vertical: 30),
            child: Image.asset(quotesList[selectedQuote]["image"]),
          ),
          Container(
            //margin: EdgeInsets.only(bottom: 50),
            child: Card(
              elevation: 5,
              color: Theme.of(context).accentColor,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  quotesList[selectedQuote]["quote"],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    wordSpacing: 2,
                    height: 1.2,
                  ),
                  //textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 13),
              onPressed: nextQuote,
              child: Text(
                'Próxima Frase',
                style: TextStyle(fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
