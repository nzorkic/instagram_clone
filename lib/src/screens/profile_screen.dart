import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/src/constants/app_sizes.dart';
import 'package:instagram_clone/src/constants/assets.dart';
import 'package:instagram_clone/src/constants/colors.dart';
import 'package:instagram_clone/src/constants/test_data.dart';
import 'package:instagram_clone/src/localization/string_hardcoded.dart';
import 'package:instagram_clone/src/services/firebase_services.dart';
import 'package:instagram_clone/src/widgets/app_botton_nav_bar.dart';
import 'package:instagram_clone/src/widgets/circular_profile_image.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userDataProvider);

    return userData.when(
      data: (user) => Scaffold(
        appBar: AppBar(
          title: Text(user.username),
          actions: [
            SvgPicture.asset(newPost),
            gapW16,
            const Icon(
              Icons.view_list,
              color: Colors.white,
            ),
            gapW16
          ],
        ),
        body: Container(
          color: primaryBlack,
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: CircularProfileImage(
                      size: 70,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              user.posts.length.toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                            Text(
                              "Posts".hardcoded,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              user.followers.length.toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                            Text(
                              "Followers".hardcoded,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              user.following.length.toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                            Text(
                              "Following".hardcoded,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 2.0),
                child: Text(
                  "${user.firstName} ${user.lastName}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 12.0, 6.0, 10.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[900],
                        ),
                        onPressed: () => {},
                        child: const Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2.0, 12.0, 4.0, 10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[900],
                      ),
                      onPressed: () => {},
                      child: const Icon(
                        Icons.person_add_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Scaffold(
                    appBar: AppBar(
                      flexibleSpace: TabBar(
                        indicatorColor: Colors.white,
                        tabs: [
                          Tab(
                            icon: SvgPicture.asset(gridPosts),
                          ),
                          Tab(
                            icon: SvgPicture.asset(tagged),
                          ),
                        ],
                      ),
                    ),
                    body: ColoredBox(
                      color: Colors.black,
                      child: TabBarView(
                        children: [
                          GridView.count(
                            crossAxisCount: 3,
                            children: List.generate(20, (index) {
                              return Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                                child: Image.asset(user.image),
                              );
                            }),
                          ),
                          GridView.count(
                            crossAxisCount: 3,
                            children: List.generate(6, (index) {
                              return Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 0.5),
                                ),
                                child: Image.asset(user.image),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const AppBottomNavBar(),
      ),
      error: (error, stackTrace) => const Center(
        child: Text("There was an error!"),
      ),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
