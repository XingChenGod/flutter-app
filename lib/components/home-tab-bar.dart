import 'package:flutter/material.dart';

class HomeTabBar extends StatefulWidget {
  int currentIndex;
  HomeTabBar(this.currentIndex);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeTabBar(currentIndex);
  }
  
}

class _HomeTabBar extends State<HomeTabBar> {
  int currentIndex;
  _HomeTabBar(this.currentIndex);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: const IconThemeData(color: Colors.red),
      selectedLabelStyle: TextStyle(
        color: Colors.red
      ),
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      unselectedLabelStyle: TextStyle(color: Colors.grey),
      showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
                    Icons.search,
                  ),
            title: Text('发现')
          ),
          BottomNavigationBarItem(
            icon: Icon(
                    Icons.live_tv,
                  ),
            title: Text('视频')
          ),
          BottomNavigationBarItem(
            icon: Icon(
                    Icons.queue_music,
                  ),
            title: Text('我的')
          ),
          BottomNavigationBarItem(
            icon: Icon(
                    Icons.child_friendly,
                  ),
            title: Text('朋友')
          ),
          BottomNavigationBarItem(
            icon: Icon(
                    Icons.account_box,
                  ),
            title: Text('账号')
          ),
        ],
        currentIndex: this.currentIndex,
        onTap: (int i) {
          setState(() {
           this.currentIndex = i; 
          });
        },
      );
  }
  
}


//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Container(
//                 width: 32.0,
//                 height: 32.0,
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(16.0)
//                   )
//                 ),
//                 child: Center(
//                   child: Icon(
//                     Icons.search,
//                     color: Colors.white,
//                   ),
//                 )
//               ),
//               SizedBox(height: 2.0,),
//               Text(
//                 '视频',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 12.0
//                 ),
//               )
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Container(
//                 width: 32.0,
//                 height: 32.0,
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(16.0)
//                   )
//                 ),
//                 child: Center(
//                   child: Icon(
//                     Icons.search,
//                     color: Colors.white,
//                   ),
//                 )
//               ),
//               SizedBox(height: 2.0,),
//               Text(
//                 '我的',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 12.0
//                 ),
//               )
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Container(
//                 width: 32.0,
//                 height: 32.0,
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(16.0)
//                   )
//                 ),
//                 child: Center(
//                   child: Icon(
//                     Icons.search,
//                     color: Colors.white,
//                   ),
//                 )
//               ),
//               SizedBox(height: 2.0,),
//               Text(
//                 '朋友',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 12.0
//                 ),
//               )
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Container(
//                 width: 32.0,
//                 height: 32.0,
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(16.0)
//                   )
//                 ),
//                 child: Center(
//                   child: Icon(
//                     Icons.search,
//                     color: Colors.white,
//                   ),
//                 )
//               ),
//               SizedBox(height: 2.0,),
//               Text(
//                 '账号',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 12.0
//                 ),
//               )
//             ],
//           )