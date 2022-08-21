import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/src/models/user/user.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required User author,
    required String image,
    required List<String> likes,
    required List<String> comments,
    required DateTime timeCreated,
  }) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}
