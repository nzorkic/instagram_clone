import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/src/constants/assets.dart';
import 'package:instagram_clone/src/routing/app_router.dart';
import 'package:instagram_clone/src/widgets/circular_profile_image.dart';

class AppBottomNavBar extends ConsumerWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
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
          icon: CircularProfileImage(),
          label: "",
        ),
      ],
      currentIndex: ref.watch(_currentIndexProvider),
      onTap: (value) => {
        ref.read(_currentIndexProvider.notifier).state = value,
        if (value == 0)
          {
            context.goNamed(AppRoute.home.name),
          }
        else if (value == 4)
          {
            context.goNamed(AppRoute.profile.name),
          }
      },
    );
  }
}

final _currentIndexProvider = StateProvider<int>((ref) => 0);
