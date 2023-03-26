import 'package:e_evaluation/shared/models/authMODEL.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthQuery {
  String errorMessage = "";
  UserData? _userFromFirebase(User? user) {
    if (user == null) {
      return null;
    }

    return UserData(user.uid, user.email);
  }

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future<UserData?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var credentials = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      errorMessage = "";
      return _userFromFirebase(credentials.user);
    } on FirebaseAuthException catch (e) {
      if (e.code.toString() == "user-not-found") {
        errorMessage = e.code.toString();
      } else if (e.code.toString() == "invalid-email") {
        errorMessage = e.code.toString();
      } else {
        errorMessage = "";
      }
      print(e);
      return null;
    }
  }

  Future<UserData?> signUpWithEmailAndPassword({required String email, required String password}) async {
    try {
      var credentials = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      errorMessage = "";
      return _userFromFirebase(credentials.user);
    } on FirebaseAuthException catch (e) {
      if (e.code.toString() == "email-already-in-use") {
        errorMessage = e.code.toString();
      } else {
        errorMessage = "";
      }
      print(e);
      return null;
    }
  }

  Future signInAnon() async {
    try {
      UserCredential result = await _firebaseAuth.signInAnonymously();
      User _user = result.user!;
      return _user;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
