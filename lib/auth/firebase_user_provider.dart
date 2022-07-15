import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LinkedinFirebaseUser {
  LinkedinFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

LinkedinFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LinkedinFirebaseUser> linkedinFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<LinkedinFirebaseUser>(
            (user) => currentUser = LinkedinFirebaseUser(user));
