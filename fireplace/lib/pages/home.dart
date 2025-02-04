import 'package:fireplace/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 26, 24),
      body: Column(
        children: [
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
          ],)



        ],
      ),
      bottomNavigationBar: getBottomNavBar(0),
    );

  }

}