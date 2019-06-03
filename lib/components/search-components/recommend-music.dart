import 'package:flutter/material.dart';

import './card-header.dart';
import './myGridView.dart';

import '../../api/recommend.dart';

class RecommendMusic extends StatefulWidget {
  RecommendMusic({Key key}) : super(key: key);

  _RecommendMusicState createState() => _RecommendMusicState();
}

class _RecommendMusicState extends State<RecommendMusic> {
  List _rightLabels = new List();
  List _leftLabels = new List();

  void _initState() {
    setState(() {
     _rightLabels = ['推荐歌单'];
     _leftLabels = ['歌单广场']; 
    });
  }

  @override
  Widget build(BuildContext context) {
    _initState();
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          CardHeader(rightLabels: _rightLabels, leftLabels: _leftLabels),
          Container(
            height: 360.0,
            margin: EdgeInsets.only(top: 10.0),
            child: MyGridView(listDatas: recommends),
          )
        ],
      ),
    );
  }
}

