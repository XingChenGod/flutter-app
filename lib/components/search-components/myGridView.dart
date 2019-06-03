import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  MyGridView({Key key, this.listDatas}) : super(key: key);

  List listDatas;

  List<Widget> _listCards() {
    print(listDatas);
    var lists = new List();
    var len = listDatas.length;
    for (int i = 0; i < len; i ++) {
      lists.add(
        Container(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0)
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          listDatas[i]['imgUrl']
                        ),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Text(
                    listDatas[i]['text'],
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.play_arrow,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      size: 18.0,
                    ),
                    Text(
                      '${listDatas[i]['count']}万',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 12.0
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      );
    }
    return lists;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.7
      ),
      physics: ClampingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0)
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          listDatas[index]['imgUrl']
                        ),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Text(
                    listDatas[index]['text'],
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.play_arrow,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      size: 18.0,
                    ),
                    Text(
                      '${listDatas[index]['count']}万',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 12.0
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
      itemCount: listDatas.length,
    );
  }
}

// Wrap(
//       spacing: 10.0,
//       runSpacing: 10.0,
//       children: listDatas.map((item) {
//         return Container(
//           width: 130.0,
//           height: 180.0,
//           child: Stack(
//             children: <Widget>[
//               Column(
//                 children: <Widget>[
//                   // Container(
//                   //   height: 100,
//                   //   decoration: BoxDecoration(
//                   //     borderRadius: BorderRadius.all(
//                   //       Radius.circular(4.0)
//                   //     ),
//                   //     image: DecorationImage(
//                   //       image: NetworkImage(
//                   //         item['imgUrl']
//                   //       ),
//                   //       fit: BoxFit.cover
//                   //     )
//                   //   ),
//                   // ),
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(6.0),
//                     child: Image.network(
//                       item['imgUrl'],
//                       fit: BoxFit.cover
//                     ),
//                   ),
//                   Text(
//                     item['text'],
//                     textAlign: TextAlign.left,
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                   )
//                 ],
//               ),
//               Align(
//                 alignment: Alignment.topRight,
//                 child: Row(
//                   children: <Widget>[
//                     Icon(
//                       Icons.play_arrow,
//                       color: Color.fromRGBO(255, 255, 255, 1),
//                       size: 18.0,
//                     ),
//                     Text(
//                       '${item['count']}万',
//                       style: TextStyle(
//                         color: Color.fromRGBO(255, 255, 255, 1),
//                         fontSize: 12.0
//                       ),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         );
//       }).toList(),
//     );

