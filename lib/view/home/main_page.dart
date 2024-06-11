import 'package:ecourse_app/utils/theme.dart';
import 'package:ecourse_app/view/chart/chart_page.dart';
import 'package:ecourse_app/view/home/home_page.dart';
import 'package:ecourse_app/view/profile/profile_page.dart';
import 'package:ecourse_app/view/save/save_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  static List<Widget> listPage = <Widget>[
    const HomePage(),
    const ChartPage(),
    const SavePage(),
    const ProfilePage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listPage[selectedIndex],
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: false,
      floatingActionButton: searchButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        child: BottomAppBar(
          color: primaryColor,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 5 * 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => onItemTapped(0),
                      child: Image.asset(
                        height: 40,
                        "assets/Home.png",
                        color: selectedIndex == 0
                            ? yellowColor
                            : Color(0xff808191),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => onItemTapped(1),
                      child: Image.asset(
                        height: 35,
                        "assets/chart.png",
                        color: selectedIndex == 1
                            ? yellowColor
                            : Color(0xff808191),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 5 * 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => onItemTapped(2),
                      child: Image.asset(
                        height: 35,
                        "assets/save.png",
                        color: selectedIndex == 2
                            ? yellowColor
                            : Color(0xff808191),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => onItemTapped(3),
                      child: Image.asset(
                        height: 35,
                        "assets/profile.png",
                        color: selectedIndex == 3
                            ? yellowColor
                            : Color(0xff808191),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget searchButton() {
  return FloatingActionButton(
    shape: const CircleBorder(),
    backgroundColor: yellowColor.withOpacity(0.2),
    onPressed: () {},
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: yellowColor.withOpacity(0.2),
          width: 2,
        ),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('assets/search.png'),
      ),
    ),
  );
}
