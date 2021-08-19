import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
            child: Text('Escolha do App:', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
          ),
          Image.asset('assets/images/pattern.png'),
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: Text('Você perdeu!', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Image.asset('assets/images/rock.png', height: 100,),
            Image.asset('assets/images/paper.png', height: 100,),
            Image.asset('assets/images/scissors.png', height: 100,)
          ]),
        ],
      ),
    );
  }
}
