import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Physics App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TopPage(title: 'Top Page'),
    );
  }
}

class TopPage extends StatefulWidget {
  const TopPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
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
