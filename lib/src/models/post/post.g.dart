// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      image: json['image'] as String,
      likes: (json['likes'] as List<dynamic>).map((e) => e as String).toList(),
      comments:
          (json['comments'] as List<dynamic>).map((e) => e as String).toList(),
      timeCreated: DateTime.parse(json['timeCreated'] as String),
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'author': instance.author,
      'image': instance.image,
      'likes': instance.likes,
      'comments': instance.comments,
      'timeCreated': instance.timeCreated.toIso8601String(),
    };
