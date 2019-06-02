import 'package:flutter/material.dart';

import '../components/search-components/home-banner.dart';
import '../components/search-components/home-menu.dart';
import '../components/search-components/recommend-music.dart';
import '../components/search-components/tab-music.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SearchPage();
  }
  
}

class _SearchPage extends State<SearchPage> {
  ScrollController _scrollController = new ScrollController();

  void initState() {
    super.initState();
    _scrollController.addListener(() {
      print(_scrollController.offset);
    });
  }

  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  final _searchTitle = '大家都在搜 遇到';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            bottomOpacity: 0.0,
            brightness: Brightness.light,
            elevation: 0, // 控制tab下的阴影
            leading: Icon(
              Icons.music_video,
              color: Colors.grey,
              size: 32.0,
            ),
            title: Container(
                      width: 450.0,
                      height: 32.0,
                      padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(12.0))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 32.0,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '$_searchTitle',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w200
                            ),
                          )
                        ],
                      )
                  )
          ),
        body: ListView(
          controller: _scrollController,
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            HomeBanner(),
            HomeMenu(),
            RecommendMusic(),
            TabMusic(),
            Container(
              color: Color.fromRGBO(240, 240, 250, 1),
              height: 4.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16.0, 10, 16.0, 10),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Color.fromRGBO(200, 200, 200, 1), width: 0.4))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '云村精选',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    )
                  ),
                  GestureDetector(
                    child: Container(
                      width: 96.0,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.update, size: 14.0,),
                          Text('获取最新内容', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                    onTapUp: null,
                  )
                ],
              ),
            )
          ],
        )
      );
  }
  
}