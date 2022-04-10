// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:routepages/Routation/route_one.dart';
import 'package:routepages/Routation/route_two.dart';
import 'package:routepages/widgets_functions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/x1': (context) => const ScreenOne(),
        '/x2': (context) => const ScreenTwo(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
    void seletedItem(int index) {
      setState(() {
        selectedItemIndex = index;
      });
    }
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: Text(pages[selectedItemIndex]['title'].toString()),
      ),
      body:pages[selectedItemIndex]['page'] as Widget,
      drawerScrimColor: Colors.cyan.withOpacity(0.5),
      drawer: MyDrawer(context),
      bottomNavigationBar: BottomNavigationBar(
          onTap: seletedItem,
          currentIndex: selectedItemIndex,
          elevation: 10,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.shifting,
          items:  [
            BottomNavigationBarItem(
                icon: const Icon(Icons.home_max_outlined), label: "Home",backgroundColor: bgcBtom),
            BottomNavigationBarItem(
                icon:const Icon(Icons.school_outlined), label: "Schule",backgroundColor: bgcBtom)
          ]),
    );
  }
}
