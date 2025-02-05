
import 'package:fireplace/data-classes/mangaItem.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class Itemlist extends StatefulWidget {
  const Itemlist({super.key});

  @override
  State<StatefulWidget> createState() => _ItemListState();

}

class _ItemListState extends State<Itemlist> {

  var elements = <MangaItem>[];
  var likedElements = <int>[];

  void readData(String path) async {
    var input = await rootBundle.loadString(path);
    Map data = jsonDecode(input);
    for(String key in data.keys) {
      elements.add(MangaItem(key, data[key]["title"], data[key]["desc"], data[key]["cover_id"]));
    }
  }

  @override
  void initState() {
    super.initState();
    readData("assets/manga-data/data.json");
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
  
}