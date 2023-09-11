import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Physics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mode_edit),
            label: 'Question',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
