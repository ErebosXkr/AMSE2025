
import 'package:fireplace/data-classes/mangaItem.dart';
import 'package:fireplace/data-classes/elements.dart';
import 'package:flutter/material.dart';

class Itemlist extends StatelessWidget {
  const Itemlist({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: Elements.getItemWidgets(),
    );
  }

  

}