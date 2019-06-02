import 'package:flutter/material.dart';

import '../../api/home-tab.dart';

class TabMusic extends StatefulWidget {
  TabMusic({Key key}) : super(key: key);

  _TabMusicState createState() => _TabMusicState();
}

class _TabMusicState extends State<TabMusic> {
  int _currentIndex = 0;
  List rightLabels = ['更多新碟', '新歌推荐'];

  List _getTabDatas() {
    return homeTabs[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 80.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                      child: Container(
                        child: Text(
                          '新碟',
                          style: _currentIndex == 0
                              ? TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w500)
                              : TextStyle(fontSize: 12.0, color: Colors.grey, fontWeight: FontWeight.w100),
                        ),
                      ),
                      onTapUp: (details) {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                    ),
                    Container(
                      height: 10.0,
                      decoration: BoxDecoration(
                          border: Border(
                              right:
                                  BorderSide(color: Colors.grey, width: 0.5))),
                    ),
                    GestureDetector(
                      child: Container(
                        child: Text(
                          '新歌',
                          style: _currentIndex == 1
                              ? TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w500)
                              : TextStyle(fontSize: 12.0, color: Colors.grey, fontWeight: FontWeight.w100),
                        ),
                      ),
                      onTapUp: (details) {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                    )
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  width: 80.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.5),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Center(
                    child: Text(
                      rightLabels[_currentIndex],
                      style: TextStyle(color: Colors.blueGrey, fontSize: 14.0),
                    ),
                  ),
                ),
                onTapUp: (TapUpDetails details) {
                  print('点击了$details');
                },
              )
            ],
          ),
          Container(
            height: 145,
            margin: EdgeInsets.only(top: 10.0),
            child: GridView.builder(
              itemCount: _getTabDatas().length,
              physics: ClampingScrollPhysics(),
              controller: ScrollController(initialScrollOffset: 0.0, keepScrollOffset: false),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                childAspectRatio: 0.6
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        child: Image.network(
                          _getTabDatas()[index]['imgUrl'],
                          fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      Text(
                        _getTabDatas()[index]['title'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 16.0
                        ),
                      ),
                      Text(
                        _getTabDatas()[index]['subTitle'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey
                        )
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ]));
  }
}

// Wrap(
//               spacing: 10.0,
//               children: _getTabDatas().map((item) {
//                 return Container(
//                   height: 180.0,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(6.0),
//                         child: Image.network(
//                           item['imgUrl'],
//                           fit: BoxFit.cover
//                         ),
//                       ),
//                       Text(
//                         item['title'],
//                         overflow: TextOverflow.ellipsis,
//                         maxLines: 1,
//                         style: TextStyle(
//                           fontSize: 16.0
//                         ),
//                       ),
//                       Text(
//                         item['subTitle'],
//                         overflow: TextOverflow.ellipsis,
//                         maxLines: 1,
//                         style: TextStyle(
//                           fontSize: 13.0,
//                           color: Colors.grey
//                         )
//                       )
//                     ],
//                   ),
//                 );
//               }).toList(),
//             ),
