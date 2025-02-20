
import 'package:fireplace/data-classes/mangaItem.dart';
import 'package:fireplace/data-classes/elements.dart';
import 'package:fireplace/widgets/mangaItemWidget.dart';
import 'package:flutter/material.dart';

class LikedItemList extends StatefulWidget {
  const LikedItemList({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return LikedItemListState();
  }

}

class LikedItemListState extends State<LikedItemList> {

  List<MangaItemWidget> children = Elements.getLikedItemWidgets(onPress: () {});

  @override
  void initState() {
    children = getList();
  }

  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: children,
    );
  }

  List<MangaItemWidget> getList() {
    return Elements.getLikedItemWidgets(onPress: () {
      setState(() {
          children = getList();
        });
      });
  }
  
}