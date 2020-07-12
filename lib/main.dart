import 'package:flutter/material.dart';
import 'package:sheldon_said/quotes.dart';
import 'package:sheldon_said/screens/off.dart';

void main() => runApp(SheldondSaid());

class SheldondSaid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sheldon Disse',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(214, 34, 11, 1),
        accentColor: Color.fromRGBO(38, 74, 106, 1),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool moreQuotes = true;
  int selectedQuote = 0;

  void nextQuote() {
    setState(() {
      if (selectedQuote < quotesList.length - 1) {
        selectedQuote++;
      } else {
        selectedQuote = 0;
        moreQuotes = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          color: Theme.of(context).accentColor,
          padding: EdgeInsets.all(8),
          child: Image.asset('assets/images/atomo.png'),
        ),
        title: Text('Sheldon said'),
      ),
      body: moreQuotes
          ? Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 90,
                    height: 90,
                    child: Image.asset(quotesList[selectedQuote]["image"]),
                  ),
                  Container(
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
            )
          : NoMoreQuotes(),
    );
  }
}
