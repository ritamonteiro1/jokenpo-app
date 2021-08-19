import 'package:flutter/material.dart';
import 'dart:math';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var _appImage = AssetImage('assets/images/pattern.png');
  var _messagem = 'Escolha uma opção abaixo!';

  _alternativeOption(String clickedImage) {
    var _options = ['rock', 'paper', 'scissors'];
    var _number = Random().nextInt(3);
    var _appChoice = _options[_number];
    switch (_appChoice) {
      case 'rock':
        setState(() {
          this._appImage = AssetImage('assets/images/rock.png');
        });
        break;
      case 'paper':
        setState(() {
          this._appImage = AssetImage('assets/images/paper.png');
        });
        break;
      case 'scissors':
        setState(() {
          this._appImage = AssetImage('assets/images/scissors.png');
        });
        break;
    }

    if (clickedImage == 'rock' && _appChoice == 'scissors' ||
        clickedImage == 'scissors' && _appChoice == 'paper' ||
        clickedImage == 'paper' && _appChoice == 'rock') {
      setState(() {
        _messagem = 'Você ganhou!';
      });
    } else if (_appChoice == 'rock' && clickedImage == 'scissors' ||
        _appChoice == 'scissors' && clickedImage == 'paper' ||
        _appChoice == 'paper' && clickedImage == 'rock') {
      setState(() {
        _messagem = 'Você perdeu!';
      });
    } else {
      setState(() {
        _messagem = 'Empate!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JokenPo'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              'Escolha do App:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image(
            image: _appImage,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              this._messagem,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () => _alternativeOption('rock'),
              child: Image.asset(
                'assets/images/rock.png',
                height: 100,
              ),
            ),
            GestureDetector(
              onTap: () => _alternativeOption('paper'),
              child: Image.asset(
                'assets/images/paper.png',
                height: 100,
              ),
            ),
            GestureDetector(
              onTap: () => _alternativeOption('scissors'),
              child: Image.asset(
                'assets/images/scissors.png',
                height: 100,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
