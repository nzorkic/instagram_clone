import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/src/app.dart';

void main() async {
  await runZonedGuarded(() async {
    GoRouter.setUrlPathStrategy(UrlPathStrategy.path);

    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
    };

    runApp(
      const ProviderScope(
        child: App(),
      ),
    );
  }, (Object error, StackTrace stack) {
    debugPrint(error.toString());
  });
}
