import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Initializer {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    _initFirebase();
  }

  static Future<void> _initFirebase() async {
    await Firebase.initializeApp();
  }
}
