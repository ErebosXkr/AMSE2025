import 'package:fireplace/data-classes/mangaItem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MangaItemWidget extends StatelessWidget {

  final MangaItem manga;
  final bool liked;

  const MangaItemWidget(this.manga, this.liked, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
      child: Container(
        color: Color.fromARGB(255, 30, 34, 30),
        height: 100,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Image.asset(
              "images/${manga.id}-${manga.coverId}.jpg",
              height: 80,
              )),

            Container(
              width: MediaQuery.sizeOf(context).width-120,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(manga.title, style: GoogleFonts.nunito(color: Colors.white, fontSize: 15), overflow: TextOverflow.ellipsis,),
                    SizedBox(height: 2),
                    Text(manga.desc ?? "no description", style: GoogleFonts.nunito(color: const Color.fromARGB(255, 107, 107, 107), fontSize: 11), overflow: TextOverflow.ellipsis,)
                  ]
                )
              )
            )
          ],


        )
      ),

    );
  }

}