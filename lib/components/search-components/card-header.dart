import 'package:flutter/material.dart';

class CardHeader extends StatefulWidget {
  CardHeader({Key key, this.leftLabels, this.rightLabels}) : super(key: key);
  List rightLabels;
  final List leftLabels;
  _CardHeaderState createState() => _CardHeaderState();
}

class _CardHeaderState extends State<CardHeader> {

  Widget _cardRightTab() {
        return Text(
                widget.rightLabels[0],
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w300
                ),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _cardRightTab(),
              GestureDetector(
                child: Container(
                  width: 80.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.5),
                    borderRadius: BorderRadius.all(
                       Radius.circular(10.0) 
                    )
                  ),
                  child: Center(
                    child: Text(
                      widget.leftLabels[0],
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 14.0
                      ),
                    ),
                  ),
                ),
                onTapUp: (TapUpDetails details) {
                  print('点击了$details');
                },
              )
            ],
          );
  }
}

// class CardHeader extends StatelessWidget {
//   bool rightTab;
//   var rightLabel;
//   String leftTitle; // 左边胶囊的内容
//   String navigatorToPath; // 点击左边胶囊需要调整的路径
//   CardHeader(this.leftTitle, {Key key, this.rightTab = false}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }