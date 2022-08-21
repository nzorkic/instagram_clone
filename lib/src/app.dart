import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/src/constants/app_sizes.dart';
import 'package:instagram_clone/src/constants/assets.dart';
import 'package:instagram_clone/src/widgets/home_botton_nav_bar.dart';
import 'package:instagram_clone/src/widgets/post_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
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
          color: Colors.black,
          alignment: Alignment.center,
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
        bottomNavigationBar: const HomeBottomNavBar(),
      ),
    );
  }
}
