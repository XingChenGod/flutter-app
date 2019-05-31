import 'package:flutter/material.dart';

import '../components/search-components/home-banner.dart';
import '../components/search-components/home-menu.dart';
import '../components/search-components/recommend-music.dart';
import '../components/search-components/tab-music.dart';

class SearchPage extends StatelessWidget {
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
          physics: BouncingScrollPhysics(),
          controller: ,
          children: <Widget>[
            HomeBanner(),
            HomeMenu(),
            RecommendMusic(),
            TabMusic()
          ],
        )
      );
  }
  
}