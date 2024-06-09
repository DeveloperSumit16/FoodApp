import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;

  getCurrentUser () async {
    return await auth.currentUser;
  }

  Future signOut () async {
    await FirebaseAuth.instance.signOut();
  }

  Future deleteUser () async {
    User? user = FirebaseAuth.instance.currentUser;
    user?.delete();
  }
}