import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_blogger/pages/responsive.dart';
import 'package:travel_blogger/widgets/profile_image.dart';

import 'Text_widget.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius:  BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          child: Image.network(
            'https://thumbs.dreamstime.com/b/canada-forest-park-nature-water-reservoir-web-banner-header-website-beautiful-landscape-summer-scene-day-view-canadian-157238839.jpg',
            height: getHeight(context) *0.2,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 40,
          left: 16,
          child: Icon(Icons.arrow_back, color: Colors.black, size: 28),
        ),
         Positioned(
          bottom: -30,
           left: getWidth(context)/2 - 55,
           child: CircleAvatar(
            radius: getResponsive(context) * 65,
            backgroundColor: Colors.white,
            child: ProfileImage(imagePath: 'assets/places/ali2.jpeg', rad: getResponsive(context) * 60)),
         ),
        Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              width: getWidth(context) * 0.32,
                decoration: BoxDecoration(
                  color: Colors.greenAccent.withValues(alpha: 0.30,),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: TextWidget(Text: "travel Blogger", textsize: 17, fw: FontWeight.w400 ))),

      ],
    );
  }
}
