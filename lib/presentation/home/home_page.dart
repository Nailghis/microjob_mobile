import 'package:flutter/material.dart';
import 'package:forsat_app/presentation/auth/account_page.dart';
import 'package:forsat_app/presentation/favorites/favorites_page.dart';
import 'package:forsat_app/presentation/forum/question_page.dart';
import 'package:forsat_app/presentation/opportunities/opportunities_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller
  PageController _pageController = PageController();
  //list des pages à afficher sur le screen
  final List<Widget> _screens = [
    OpportunitiesPage(),
    QuestionPage(),
    FavoritesPage(),
    AccountPage()
  ];
  int _selectedIndex = 0;
  //fonction de chargement de page
  Future<void> _onItemTapped(int pageIndex) async {
    _pageController.jumpToPage(pageIndex);
  }

  Future<void> _onPageChanged(int itemIndex) async {
    setState(() {
      _selectedIndex = itemIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _screens,
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[100],
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        unselectedLabelStyle: TextStyle(color: Colors.grey),

        items: [
          BottomNavigationBarItem(
            label: "Opportunities",
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Colors.green[700] : Colors.grey,
              size: Size.,
            ),
          ),
          BottomNavigationBarItem(
              label: "Forum",
              icon: Icon(
                Icons.chat,
                color: _selectedIndex == 1 ? Colors.green[700] : Colors.grey,
              )),
          BottomNavigationBarItem(
              label: "Favorites",
              icon: Icon(
                Icons.favorite,
                color: _selectedIndex == 2 ? Colors.green[700] : Colors.grey,
              )),
          BottomNavigationBarItem(
              label: "Account",
              icon: Icon(
                Icons.person,
                color: _selectedIndex == 3 ? Colors.green[700] : Colors.grey,
              ))
        ],
      ),
    );
  }
}
