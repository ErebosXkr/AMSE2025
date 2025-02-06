
import 'package:fireplace/data-classes/mangaItem.dart';
import 'package:fireplace/widgets/mangaItemWidget.dart';
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

  Future<Map> readData(String path) async {
    var input = await rootBundle.loadString(path);
    Map data = jsonDecode(input);
    return data;
  }

  List<MangaItem> fromMap(Map map) {
    var nelt = <MangaItem>[];
    int i = 0;
    for (String key in map.keys) {
      if (i > 5) break;
      nelt.add(MangaItem(key, map[key]["title"], map[key]["desc"], map[key]["status"], map[key]["cover_id"]));
      i++;
    }
    return nelt;
  }

  @override
  void initState() {
    super.initState();
    readData("assets/manga-data/data.json").then((map) => setState(() {
      elements = fromMap(map);
    }));
  }

  List<MangaItemWidget> getItemWidgets() {
    List<MangaItemWidget> res = <MangaItemWidget>[];

    for (MangaItem m in elements) {
      res.add(MangaItemWidget(m, false));
    }

    return res;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: getItemWidgets(),
      ),
    );
  }
  
}