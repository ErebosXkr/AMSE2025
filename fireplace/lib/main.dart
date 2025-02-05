import 'package:fireplace/pages/about.dart';
import 'package:fireplace/pages/home.dart';
import 'package:fireplace/pages/likes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

const bottomNavBarElements = <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined, color: Colors.white), label: "Home", activeIcon: Icon(Icons.home_outlined, color: Color.fromARGB(255, 40, 170, 0))),
          BottomNavigationBarItem(icon: Icon(Icons.auto_awesome, color: Colors.white), label: "Liked", activeIcon: Icon(Icons.auto_awesome, color: Color.fromARGB(255, 40, 170, 0))),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.white), label: "About", activeIcon: Icon(Icons.person, color: Color.fromARGB(255, 40, 170, 0)))
        ];

BottomNavigationBar getBottomNavBar(int index, BuildContext context) {
  return BottomNavigationBar(
        currentIndex: index,
        backgroundColor: Color.fromARGB(255, 24, 26, 24),
        showUnselectedLabels: true,
        selectedItemColor: Color.fromARGB(255, 40, 170, 0),
        unselectedItemColor: Colors.white,
        items: bottomNavBarElements,
        type: BottomNavigationBarType.fixed,
        onTap: (nIndex) => {
          if (nIndex == 0) Navigator.pushReplacement(context,
          PageRouteBuilder(
            pageBuilder: (context, anim1, anim2) => HomePage(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ))
          else if (nIndex == 1) Navigator.pushReplacement(context,
          PageRouteBuilder(
            pageBuilder: (context, anim1, anim2) => LikePage(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ))
          else if (nIndex == 2) Navigator.pushReplacement(context,
          PageRouteBuilder(
            pageBuilder: (context, anim1, anim2) => AboutPage(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ))
        },
        );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fireplace',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 191, 51)),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}