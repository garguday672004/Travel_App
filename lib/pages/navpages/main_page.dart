import 'package:app_dev/pages/navpages/bar_item_page.dart';
import 'package:app_dev/pages/navpages/home_page.dart';
import 'package:app_dev/pages/navpages/my_page.dart';
import 'package:app_dev/pages/navpages/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex=0;
  void OonTap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // var onTapp;
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: OonTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items:[
          BottomNavigationBarItem(label: "Home",icon: Icon(Icons.account_balance_sharp)),
          BottomNavigationBarItem(label: "Bar",icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label: "Search",icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "My",icon: Icon(Icons.person_outline_outlined)),
        ],
      ),
    );
  }
}
