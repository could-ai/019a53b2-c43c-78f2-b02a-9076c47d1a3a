import 'package:flutter/material.dart';
import 'screens/cash_screen.dart';
import 'screens/konnect_screen.dart';

void main() {
  runApp(const CashDrawerApp());
}

class CashDrawerApp extends StatelessWidget {
  const CashDrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cash Drawer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/cash': (_) => const CashScreen(),
        '/konnect': (_) => const KonnectScreen(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = [
    CashScreen(),
    KonnectScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cash Drawer'),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.money), label: 'Cash'),
          BottomNavigationBarItem(icon: Icon(Icons.phone_android), label: 'Konnect'),
        ],
        onTap: (index) => setState(() { _selectedIndex = index; }),
      ),
    );
  }
}