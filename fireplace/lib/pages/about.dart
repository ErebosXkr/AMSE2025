import 'package:fireplace/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
          Text("auteur: Paul Juran", style: GoogleFonts.nunito(color: Color.fromARGB(255, 127, 127, 127)),),
          Text("github: https://github.com/ErebosXkr", style: GoogleFonts.nunito(color: Color.fromARGB(255, 127, 127, 127)),),
          
        ],
      ),
      bottomNavigationBar: getBottomNavBar(2, context),
    );

  }

}