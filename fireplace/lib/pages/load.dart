import 'package:fireplace/data-classes/elements.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {

    Elements.setupElements(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 19, 17),
      body: Center(
        child: Image.asset("images/logo.png", height: 200,)
      )
    );
  }
  
}