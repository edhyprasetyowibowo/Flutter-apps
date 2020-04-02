import 'package:belajar/pages/awal.dart';
import 'package:belajar/pages/inbox.dart';
// import 'package:belajar/pages/pesanan.dart';
import 'package:belajar/pages/profile.dart';
import 'package:belajar/pages/simpan.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trip.ID',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Trip.ID'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _layoutPage = [
    Awal(),
    Simpan(),
    // Pesanan(),
    Inbox(),
    Profile()
  ];

  void _onTabItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex) ,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Beranda')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            title: Text('Wisata')
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.camera_alt),
          //   title: Text('Foto')
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            title: Text('Kuliner')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Akun Saya')
          )
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
