import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.all(8),
            child: Image.asset(
              'assets/images/atomo.png',
              fit: BoxFit.scaleDown,
            ),
          ),
          title: Text('Sheldon said'),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 15),
                child: Image.asset('assets/images/bbt.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 55),
                child: Text(
                  '"Desculpe, café está fora de questão. Quando eu me mudei para a Califórnia, prometi a minha mãe que eu não começaria a usar drogas."',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Próxima Frase',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
