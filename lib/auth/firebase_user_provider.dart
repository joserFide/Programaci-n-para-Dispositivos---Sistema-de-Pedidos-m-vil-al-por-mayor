import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PedidosFirebaseUser {
  PedidosFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PedidosFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PedidosFirebaseUser> pedidosFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PedidosFirebaseUser>(
      (user) {
        currentUser = PedidosFirebaseUser(user);
        return currentUser!;
      },
    );
