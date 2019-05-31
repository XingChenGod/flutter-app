import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  String date = DateTime.now().day.toString();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 90.0,
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5)
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  width: 50.0,
                  height: 50.0,
                  margin: EdgeInsets.only(bottom: 6.0),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 24.0,
                        left: 20.0,
                        child: Text(date,
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.0)),
                      ),
                      Positioned(
                        top: 10.0,
                        left: 10.0,
                        child: Icon(
                          Icons.calendar_today,
                          color: Colors.white, 
                          size: 30.0
                        ),
                      ),
                    ],
                  )),
                  Text(
                    '每日推荐',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                margin: EdgeInsets.only(bottom: 6.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/music-menu.png',
                      width: 28.0,
                      height: 28.0,
                    )
                  ],
                ),
              ),
              Text(
                '歌单',
                style: TextStyle(
                      color: Colors.grey
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                margin: EdgeInsets.only(bottom: 6.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.list,
                      color: Colors.white,
                      size: 30.0
                    )
                  ],
                ),
              ),
              Text(
                '排行榜',
                style: TextStyle(
                      color: Colors.grey
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                margin: EdgeInsets.only(bottom: 6.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.radio,
                      color: Colors.white,
                      size: 30.0
                    )
                  ],
                ),
              ),
              Text(
                '电台',
                style: TextStyle(
                      color: Colors.grey
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                margin: EdgeInsets.only(bottom: 6.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.live_tv,
                      color: Colors.white,
                      size: 30.0
                    )
                  ],
                ),
              ),
              Text(
                '直播',
                style: TextStyle(
                      color: Colors.grey
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
