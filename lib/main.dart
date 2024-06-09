import 'package:e_commerce_app/admin/admin_home.dart';
import 'package:e_commerce_app/admin/admin_login.dart';
import 'package:e_commerce_app/pages/Login.dart';
import 'package:e_commerce_app/pages/bottom_navigation.dart';
import 'package:e_commerce_app/pages/home.dart';
import 'package:e_commerce_app/pages/onboard.dart';
import 'package:e_commerce_app/pages/sign_up.dart';
import 'package:e_commerce_app/pages/wallet.dart';
import 'package:e_commerce_app/widget/app_constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

// await Firebase.initializeApp(
  //   options: FirebaseOptions(
  //     apiKey: 'AIzaSyBxXOVUaQdJUHTyrLg3H-f4qGdoJDE8Jv0',
  //     appId: '1:170395238508:android:7079a90c1f4e404a1cd849',
  //     messagingSenderId: '',
  //     projectId: 'foodapp-fb86e',
  //   ),
  // );

// Initialize this for firebase android (mobile), 
// or if for Web do it like (kWeb) said Jisan Sir.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Stripe.publishableKey = publishableKey;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Onboard(),
      home: BottomNav(),
    );
  }
}
