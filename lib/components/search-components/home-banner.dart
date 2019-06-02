import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../../api/banner.dart' show bannerList;

class HomeBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 180.0,
      padding: const EdgeInsets.all(10.0),
      child: Swiper(
       itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      bannerList[index]
                    ),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0)
                  )
                ),
              );
            },
            autoplay: true,
            itemCount: bannerList.length,
            pagination: SwiperPagination(),
      ),
    );
  }
  
}