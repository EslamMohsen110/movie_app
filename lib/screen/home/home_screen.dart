import 'package:flutter/material.dart';
import 'package:movie_app/screen/movie/movie_screen.dart';
import 'package:movie_app/screen/search/search_screen.dart';
import 'package:movie_app/screen/watch_list/watch_list_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(
                color: Colors.black,
                height: height * 0.28,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image.asset(
                            'assets/images/Imagebg.png',
                            width: double.infinity,
                            height: height * 0.20,
                            fit: BoxFit.fill,
                          ),
                          Image.asset(
                            'assets/images/ImageMovie.png',
                            height: height * 0.16,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Dora and the lost city of gold',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '2019  PG-13  2h 7m',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: height * 0.26,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New Releases',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/images/ImageMovie.png',
                                        height: height * 0.20,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Image.asset('assets/images/bookmark.png')
                                  ],
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 10,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: height * 0.28,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Recomended',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/images/ImageMovie.png',
                                        height: height * 0.15,
                                        width: width * 0.23,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/bookmark.png',
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    Text(
                                      '7.7',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                Text(
                                  'Deadpool 2',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  '2018  R  1h 59m',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 10,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.home),
      //     label: 'Home',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.search),
      //     label: 'search',
      //     backgroundColor: Colors.black,
      //   ),
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.movie_creation_outlined),
      //       label: 'Browse',
      //       backgroundColor: Colors.black),
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite_border),
      //       label: 'WatchList',
      //       backgroundColor: Colors.black),
      // ]),
    );
  }
}
