import 'package:flutter/material.dart';
import 'package:instagram_clone/src/constants/test_data.dart';

class CircularProfileImage extends StatelessWidget {
  CircularProfileImage({super.key, this.size = 30});

  final double size;
  final user = users[0];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: Image.asset(
        user.image,
        width: size,
        height: size,
      ),
    );
  }
}
