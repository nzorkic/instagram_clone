import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/src/constants/app_sizes.dart';
import 'package:instagram_clone/src/widgets/home_botton_nav_bar.dart';
import 'package:instagram_clone/src/widgets/post_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: SvgPicture.asset(
            "assets/images/logo/logo_text_white.svg",
          ),
          actions: [
            SvgPicture.asset("assets/images/icons/new_post.svg"),
            gapW20,
            SvgPicture.asset("assets/images/icons/activity_feed.svg"),
            gapW20,
            SvgPicture.asset("assets/images/icons/messenger.svg"),
            gapW20,
          ],
        ),
        body: Container(
          color: Colors.black,
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return PostWidget();
            },
          ),
        ),
        bottomNavigationBar: const HomeBottomNavBar(),
      ),
    );
  }
}
