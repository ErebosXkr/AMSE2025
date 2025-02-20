import 'package:fireplace/main.dart';
import 'package:fireplace/widgets/likedItemList.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LikePage extends StatelessWidget {
  const LikePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 19, 17),
      body: Column(
        children: [
          SizedBox(height: 30),
          // Title
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Image.asset(
              "images/logo.png", 
              height: 60,
              ),
              Padding(padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text("Fire",style: GoogleFonts.nunito(color: Color.fromARGB(255, 40, 170, 0), fontSize: 50)),
                  Text("Place",style: GoogleFonts.nunito(color: Colors.white, fontSize: 50)),
                ]
              ),),
          ],),
          SizedBox(height: 30),
          SizedBox(height: MediaQuery.of(context).size.height - 200,
          child: LikedItemList()),
        ],
      ),
      bottomNavigationBar: getBottomNavBar(1, context),
    );

  }

}