import 'package:flutter/material.dart';
import 'package:movie_app/screen/home/home_screen.dart';
import 'package:movie_app/screen/movie/movie_screen.dart';
import 'package:movie_app/screen/search/search_screen.dart';
import 'package:movie_app/screen/watch_list/watch_list_screen.dart';

class HomeBasic extends StatefulWidget {
  static const String routeName = 'HomeBasic';

  @override
  State<HomeBasic> createState() => _HomeBasicState();
}

class _HomeBasicState extends State<HomeBasic> {
  int selectPage = 0;

  void onTabPage(int index) {
    selectPage = index;
    setState(() {});
  }

  List<Widget> listScreen = [
    HomeScreen(),
    SearchScreen(),
    MovieScreen(),
    WatchListScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreen[selectPage],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        currentIndex: selectPage,
        onTap: onTabPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: 'search',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.movie_creation_outlined,
                color: Colors.white,
              ),
              label: 'Browse',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
              label: 'WatchList',
              backgroundColor: Colors.black),
        ],
      ),
    );
  }
}
