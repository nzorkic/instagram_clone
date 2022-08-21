import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/src/constants/app_sizes.dart';
import 'package:instagram_clone/src/constants/assets.dart';
import 'package:instagram_clone/src/constants/test_data.dart';
import 'package:instagram_clone/src/localization/string_hardcoded.dart';
import 'package:readmore/readmore.dart';

class PostWidget extends StatelessWidget {
  PostWidget({super.key});

  final user = users[0];
  final post = posts[0];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 4.0, 4.0, 6.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: Image.asset(
                    user.image,
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
              gapW4,
              Text(
                user.username,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              gapW8,
            ],
          ),
          Image.asset(
            post.image,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SvgPicture.asset(activityFeed),
                gapW8,
                SvgPicture.asset(comment),
                gapW8,
                SvgPicture.asset(sharePost),
                const Expanded(child: SizedBox()),
                SvgPicture.asset(save),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "35 likes",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 4.0),
            child: ReadMoreText(
              "${user.username} this is descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription",
              trimMode: TrimMode.Line,
              style: const TextStyle(
                color: Colors.white,
              ),
              colorClickableText: Colors.grey,
              trimCollapsedText: "more".hardcoded,
              trimExpandedText: " less".hardcoded,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "View all 11 comments",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "2 days ago",
              style: TextStyle(color: Colors.grey, fontSize: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}
