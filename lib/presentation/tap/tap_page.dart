import 'package:flutter/material.dart';
import 'package:kakao_ui_practice/presentation/tap/home/home_page.dart';
import 'package:kakao_ui_practice/presentation/tap/information/information_page.dart';
import 'package:kakao_ui_practice/presentation/tap/service/service_page.dart';

class TapPage extends StatefulWidget {
  const TapPage({Key? key}) : super(key: key);

  @override
  State<TapPage> createState() => _TapPageState();
}

class _TapPageState extends State<TapPage> {
  int _currentIndex = 0;

  final List _pages = const [
    HomePage(),
    ServicePage(),
    InformationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note_outlined),
            label: '이용서비스',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: '내 정보',
          ),
        ],
      ),
    );
  }
}
