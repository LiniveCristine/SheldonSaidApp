import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int selectedQuote = 21;
  List<Map<String, String>> _quotesList = [
    {
      'quote': 'Clique para conhecer toda a sabedoria do Doutor Sheldon Cooper',
      'image': 'assets/images/ideia.png',
    },
    {
      'quote':
          '"Desculpe, café está fora de questão. Quando eu me mudei para a Califórnia, prometi a minha mãe que eu não começaria a usar drogas."',
      'image': 'assets/images/no-coffee-cups.png',
    },
    {
      'quote':
          '"Nada prejudica mais uma amizade do que conhecer a rotina intestinal de alguém"',
      'image': 'assets/images/banheiro.png',
    },
    {
      'quote':
          '"Não, isso não é um garfo, isso é um tridente. Um tridente tem 3 dentes e um garfo comum tem 4 dentes... Garfos são para comer, tridentes para reinar nos 7 mares!"',
      'image': 'assets/images/garfo.png',
    },
    {
      'quote': '"Penny... você está no meu lugar!"',
      'image': 'assets/images/sofa.png',
    },
    {
      'quote':
          '"Eu adoro minha mãe, meus sentimentos pelo meu lugar são muito maiores."',
      'image': 'assets/images/coracao.png',
    },
    {
      'quote': '"Eu não sou louco. Minha mãe me testou."',
      'image': 'assets/images/exame.png',
    },
    {
      'quote': '"Tudo fica melhor com Bluetooth!"',
      'image': 'assets/images/bluetooth.png',
    },
    {
      'quote':
          '"Calotas polares estão derretendo, Leonard. No futuro, nadar não será opcional."',
      'image': 'assets/images/natacao.png',
    },
    {
      'quote':
          '"Stephen Hawking é um gênio e fala como um robô. É tudo o que sempre quis em um amigo."',
      'image': 'assets/images/amizade.png',
    },
    {
      'quote': '"Aparentemente, a ignorância é uma benção."',
      'image': 'assets/images/anjo.png',
    },
    {
      'quote':
          '"Esperto? Eu teria que perder 60 pontos de QI pra ser considerado esperto!"',
      'image': 'assets/images/cerebro.png',
    },
    {
      'quote': '"BAZINGA"',
      'image': 'assets/images/trovao.png',
    },
    {
      'quote': '"Eu sou claramente muito evoluído para dirigir um carro..."',
      'image': 'assets/images/pare.png',
    },
    {
      'quote': '"Só para constar, conhecer pessoas pode matar."',
      'image': 'assets/images/cuidados-de-saude-e-medicos.png',
    },
    {
      'quote': '"Que computador você tem? E por favor não diga "um branco"."',
      'image': 'assets/images/hardware.png'
    },
    {
      'quote':
          '"Leonard, quando a quela mulher se mudou, há três anos, eu falei para você não conversar com ela, e agora, veja, vamos chegar atrasados ao cinema."',
      'image': 'assets/images/cinema.png',
    },
    {
      'quote':
          '"Queridos amigos. Perdoem-me, eu teria chegado antes, mas o ônibus ficava parando para que outras pessoas entrassem."',
      'image': 'assets/images/onibus.png',
    },
    {
      'quote':
          '"Meu novo computador veio com Windows 7. Windows 7 é muito mais fácil de usar que o Windows Vista. Eu não gosto disso."',
      'image': 'assets/images/manutencao.png',
    },
    {
      'quote':
          '"Não estou dizendo que você não é bom no que faz. É só que o que você faz é inútil."',
      'image': 'assets/images/tonto.png',
    },
    {
      'quote':
          '"Se Albert Einstein não tivesse sido tão mesquinho, hoje teríamos máquinas do tempo."',
      'image': 'assets/images/einstein.png',
    },
    {
      'quote': '" Você não acha que se eu estivesse errado eu saberia?"',
      'image': 'assets/images/pergunta.png',
    },
  ];

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
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 90,
              //margin: EdgeInsets.symmetric(vertical: 30),
              child: Image.asset(_quotesList[selectedQuote]["image"]),
            ),
            Container(
              //margin: EdgeInsets.only(bottom: 50),
              child: Card(
                elevation: 5,
                color: Theme.of(context).accentColor,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    _quotesList[selectedQuote]["quote"],
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
                onPressed: () {},
                child: Text(
                  'Próxima Frase',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
