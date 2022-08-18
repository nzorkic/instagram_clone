import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          icon: SvgPicture.asset("assets/images/icons/home.svg"),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/icons/search.svg"),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/icons/tagged.svg"),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/icons/find_people.svg"),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/images/icons/home.svg"),
          label: "",
        ),
      ],
      currentIndex: 0,
    );
  }
}
