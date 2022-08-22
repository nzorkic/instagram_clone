import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firebaseAuthProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final authStateChangesProvider = StreamProvider<User?>(
  (ref) => ref.watch(firebaseAuthProvider).authStateChanges(),
);

final databaseProvider = Provider<FirebaseDatabase?>(
  (ref) {
    final auth = ref.watch(authStateChangesProvider);
    return auth.value?.uid != null ? FirebaseDatabase.instance : null;
  },
);
