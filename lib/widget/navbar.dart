import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkaja_clone/pages/accountpage.dart';
import 'package:linkaja_clone/pages/historypage.dart';
import 'package:linkaja_clone/pages/homepage.dart';

class Homeview extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Homeview> {
  int _currentIndex = 0;
  final tabs = [
    Homepage(),
    Historypage(),
    Homepage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.doc_text),
            label: 'History',
          ),
          // Hapus item FAB dari sini
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      floatingActionButton: Padding(
        padding:
            const EdgeInsets.only(bottom: 10.0), // Atur padding di bawah FAB
        child: Transform.translate(
          offset: Offset(0, 20), // Geser FAB ke atas
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'images/qris.jpg',
                    fit: BoxFit.cover,
                    width: 45,
                    height: 45,
                  ),
                ),
              ),
              const SizedBox(height: 1), // Ruang antara FAB dan label
              const Text(
                'Pay', // Ganti dengan teks label yang diinginkan
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
