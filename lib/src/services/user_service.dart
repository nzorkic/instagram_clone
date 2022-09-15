import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_clone/src/services/firebase_services.dart';

class UserService {
  getUserData(Ref ref) async {
    final dbRef = ref.read(databaseProvider).ref();
    final userSnapshot = await dbRef.child("users/1").get();
    if (userSnapshot.exists) {
      return userSnapshot.value;
    }
    return null;
  }
}
