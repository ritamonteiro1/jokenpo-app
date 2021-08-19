import 'package:flutter/material.dart';

import 'home_view.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jokenpo',
      home: HomeView(),
    );
  }
}