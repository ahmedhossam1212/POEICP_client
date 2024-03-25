import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:poeicp_client/app.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
