import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/src/constants/app_sizes.dart';
import 'package:instagram_clone/src/constants/assets.dart';
import 'package:instagram_clone/src/constants/colors.dart';
import 'package:instagram_clone/src/widgets/app_botton_nav_bar.dart';
import 'package:instagram_clone/src/widgets/post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(whiteTextLogo),
        actions: [
          SvgPicture.asset(newPost),
          gapW20,
          SvgPicture.asset(activityFeed),
          gapW20,
          SvgPicture.asset(messenger),
          gapW20,
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color: primaryBlack,
        child: ConstrainedBox(
          constraints: BoxConstraints.tight(const Size(600, double.infinity)),
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return PostWidget();
            },
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }
}
