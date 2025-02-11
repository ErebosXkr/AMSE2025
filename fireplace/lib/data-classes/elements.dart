import 'dart:convert';

import 'package:fireplace/data-classes/mangaItem.dart';
import 'package:fireplace/widgets/mangaItemWidget.dart';
import 'package:flutter/services.dart';

class Elements {

  static var elements = <MangaItem>[];
  static var likedElements = <int>[];

  static void setupElements(){
    readData("assets/manga-data/data.json").then((map) => elements = fromMap(map));
  }

  static Future<Map> readData(String path) async {
    var input = await rootBundle.loadString(path);
    Map data = jsonDecode(input);
    return data;
  }

  static List<MangaItem> fromMap(Map map) {
    var nelt = <MangaItem>[];
    int i = 0;
    for (String key in map.keys) {
      nelt.add(MangaItem(key, map[key]["title"], map[key]["status"], map[key]["cover_id"], desc: map[key]["desc"]));
      i++;
    }
    return nelt;
  }

  static List<MangaItemWidget> getItemWidgets() {
    List<MangaItemWidget> res = <MangaItemWidget>[];

    for (MangaItem m in elements) {
      res.add(MangaItemWidget(m, false));
    }
    return res;
  }

}