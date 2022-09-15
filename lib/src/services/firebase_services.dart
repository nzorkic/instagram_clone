import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram_clone/src/models/user/user.dart' as author;

// final firebaseAuthProvider =
//     Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

// final authStateChangesProvider = StreamProvider<User?>(
//   (ref) => ref.watch(firebaseAuthProvider).authStateChanges(),
// );

final databaseProvider = Provider<FirebaseDatabase>(
  (ref) {
    // final auth = ref.watch(authStateChangesProvider);
    return FirebaseDatabase.instance;
  },
);

final userDataProvider = FutureProvider<author.User>((ref) async {
  final dbRef = ref.read(databaseProvider).ref();
  final userSnapshot = await dbRef.child("users/1").get();
  return userSnapshot.value! as author.User;
});
