import 'package:untitled13/navigation.dart';
import 'page_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'page_one.dart';
import 'icons.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  int _currentIndex = 0;
  final List<Widget> _widgetList = [
    PageOne(),
    const Text('Page Two'),
    const Text('Page Three'),
    const Text('Page Four'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(widget.title)),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.grey[400]),
        selectedLabelStyle: const TextStyle(color: Colors.black),
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(MyFlutterApp.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.saved), label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.download), label: 'Downloads'),
          BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.user), label: 'Profile'),
        ],
      ),
      body: Center(child: _widgetList[_currentIndex]),
    );
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
