import 'dart:convert';
import 'dart:io';

import 'package:fireplace/data-classes/mangaItem.dart';
import 'package:fireplace/pages/home.dart';
import 'package:fireplace/widgets/mangaItemWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Elements {

  static var elements = <MangaItem>[];
  static var likedElements = <int>[];

  static void setupElements(context){
    readData("assets/manga-data/data.json").then((map) async {
      elements = fromMap(map);
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushAndRemoveUntil(context,PageRouteBuilder(
            pageBuilder: (context, anim1, anim2) => HomePage(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ),
          (Route<dynamic> route) => !Navigator.canPop(context));
    });
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

  static List<MangaItemWidget> getItemWidgets({Function? onPress}) {
    onPress ??= () {};

    List<MangaItemWidget> res = <MangaItemWidget>[];

    for (MangaItem m in elements) {
      res.add(MangaItemWidget(m, likedElements.contains(elements.indexOf(m)), onPress));
    }
    return res;
  }

  static List<MangaItemWidget> getLikedItemWidgets({required Function onPress}) {

    List<MangaItemWidget> res = <MangaItemWidget>[];

    for (int i in likedElements) {
      res.add(MangaItemWidget(elements[i], true, () {
        onPress();
        return i;
      }));
    }
    return res;
  }

}