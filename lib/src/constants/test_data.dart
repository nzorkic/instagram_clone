import 'package:instagram_clone/src/models/post/post.dart';
import 'package:instagram_clone/src/models/user/user.dart';

const List<User> users = [
  User(
    username: "nzorkic",
    image: "assets/images/test/profile.jpg",
    firstName: "Nikola",
    lastName: "Zorkic",
    followers: ["", ""],
    following: [""],
    posts: [],
  ),
];

final posts = [
  Post(
    author: users.first,
    image: "assets/images/test/flower.jpg",
    likes: ["", "", ""],
    comments: ["", "", "", "", "", ""],
    timeCreated: DateTime.now(),
  ),
];
