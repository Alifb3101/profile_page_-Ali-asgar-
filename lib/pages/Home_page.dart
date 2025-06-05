import 'package:flutter/material.dart';
import 'package:travel_blogger/pages/responsive.dart';
import 'package:travel_blogger/widgets/btn_widget.dart';
import '../widgets/Alert_box.dart';
import '../widgets/Follow_unfollow_alert.dart';
import '../widgets/Text_widget.dart';
import '../widgets/icon_btn.dart';
import '../widgets/insight_details.dart';
import '../widgets/profile_header.dart';
import 'Destination.dart';
import 'gallery_insights.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isselect = false;

  void toggle() {
    setState(() {
      isselect = !isselect;
      FollowUnfollowAlert.show(context: context, isFollowed: isselect);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderSection(),
                  SizedBox(height: getHeight(context) * 0.06),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: getResponsive(context) * 20),
                    child: Row(
                      children: [
                        TextWidget(
                          Text: "Ali -- Asgar",
                          textsize: getResponsive(context) * 30,
                          fw: FontWeight.w900,
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () => toggle(),
                          child: btn_widget(
                            Text: isselect ? 'Followed' : 'Follow',
                            bgcolour: isselect ? Colors.lightBlueAccent : Colors.blue,
                          ),
                        ),
                        SizedBox(width: getWidth(context) * 0.02),
                        InkWell(
                          onTap: () => ContactUsDialog.show(context),
                          child: btn_widget(Text: 'connect', bgcolour: Colors.deepPurple),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: getHeight(context) * 0.03),
                  TextWidget(
                    Text:
                    "Passionate about exploring new destinations and sharing my adventures with the world.",
                    textsize: getResponsive(context) * 18,
                    fw: FontWeight.w300,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getResponsive(context) * 20,
                      vertical: getResponsive(context) * 22,
                    ),
                    child: Container(
                      height: getHeight(context) * 0.09,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white54,
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://static.vecteezy.com/system/resources/thumbnails/002/281/983/small/light-purple-blurred-backdrop-vector.jpg',
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InsightDetails(Label: "Trips", count: "86"),
                            InsightDetails(Label: "     Countries", count: "    22"),
                            InsightDetails(Label: "Followers", count: "14K"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        icon_btn(
                          icons: 'assets/socialmedia_icon/social.png',
                          bgcolour: Colors.blue,
                          colour: LinearGradient(colors: [Color(0xFFDDEEFF), Color(0xFFFFFFFF)]),
                        ),
                        icon_btn(
                          icons: 'assets/socialmedia_icon/img2.png',
                          bgcolour: Colors.blueAccent,
                          colour: LinearGradient(colors: [Color(0xFFDDEEFF), Color(0xFFFFFFFF)]),
                        ),
                        icon_btn(
                          icons: 'assets/socialmedia_icon/img3.png',
                          bgcolour: Colors.white,
                          colour: LinearGradient(colors: [Color(0xFFFDEFF9), Color(0xFFFFEAF0)]),
                        ),
                        icon_btn(
                          icons: 'assets/socialmedia_icon/img4.png',
                          bgcolour: Colors.white,
                          colour: LinearGradient(colors: [Color(0xFFFAFAFA), Color(0xFFF0F0F0)]),
                        ),
                        icon_btn(
                          icons: 'assets/socialmedia_icon/img5.png',
                          bgcolour: Colors.white,
                          colour: LinearGradient(colors: [Color(0xFFDDEEFF), Color(0xFFFFFFFF)]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  TabBar(
                    labelColor: Colors.blueAccent,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.blueAccent,
                    tabs: [
                      Tab(text: "Gallery"),
                      Tab(text: "Destination"),
                    ],
                  ),
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: [
              GalleryPages(),
             destination_page(),
            ],
          ),
        ),
      ),
    );
  }
}