import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/src/constants/assets.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(home),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(search),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(tagged),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(findPeople),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(home),
          label: "",
        ),
      ],
      currentIndex: 0,
    );
  }
}
