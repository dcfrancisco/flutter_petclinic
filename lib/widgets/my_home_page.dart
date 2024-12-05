import 'package:flutter/material.dart';
import 'package:flutter_petclinic/pages/find_owner.dart';
import 'package:flutter_petclinic/pages/home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    const FindOwner(),
    const Center(child: Text('Veterinarian')),
  ];

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(size: 25),
            const SizedBox(width: 5),
            Text(widget.title),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt), label: 'Owner'),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Veterinarian',
          ),
        ],
      ),
    );
  }
}
