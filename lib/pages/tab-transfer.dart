import 'package:flutter/material.dart';

import './search.dart';
import './video.dart';
import './my.dart';
import './friends.dart';
import './account.dart';

class TabTransfer extends StatefulWidget {
  TabTransfer({Key key}) : super(key: key);

  _TabTransfer createState() => _TabTransfer();
}

class _TabTransfer extends State<TabTransfer> {
  int _currentIndex = 0;

  List<Widget> listPages = List();

  @override
  void initState() {
    listPages
      ..add(SearchPage())
      ..add(VideoPage())
      ..add(MyPage())
      ..add(FriendsPage())
      ..add(AccountPage());
  }

  @override
  Widget build(BuildContext context) {
    initState();
    return Scaffold(
      body: listPages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // selectedIconTheme: const IconThemeData(color: Colors.red),
        selectedLabelStyle: TextStyle(color: Colors.red),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              title: Text('发现')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.live_tv,
              ),
              title: Text('视频')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.queue_music,
              ),
              title: Text('我的')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
              ),
              title: Text('朋友')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
              ),
              title: Text('账号')),
        ],
        currentIndex: _currentIndex,
        onTap: (int i) {
          setState(() {
            _currentIndex = i;
          });
        },
      ),
    );
  }
}

