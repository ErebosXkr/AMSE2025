import 'package:fireplace/data-classes/elements.dart';
import 'package:flutter/material.dart';

class Imagebutton extends StatefulWidget {

  final int id;

  const Imagebutton(this.id, {super.key});

  @override
  State<StatefulWidget> createState() {
    return ImagebuttonState();
  }
}

class ImagebuttonState extends State<Imagebutton> {

  int id = 0;
  bool liked = false;

  @override
  void initState() {
    super.initState();
    id = widget.id;
    liked = (Elements.likedElements.contains(id));
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {
      setState(() {
        liked = !liked;

        if (liked) {
          Elements.likedElements.add(id);
        }

        if(!liked) {
          Elements.likedElements.remove(id);
        }
      });
    }, child: Image.asset(liked ? "images/icon_checked.png" : "images/icon_not_checked.png", width: 20,));
  }
  
}