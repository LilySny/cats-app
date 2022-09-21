import 'package:cats_app/src/core/firebase_config/firebase_options.dart';
import 'package:cats_app/src/home/view/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'src/shared/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const CatsApp());
}

class CatsApp extends StatelessWidget {
  const CatsApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cats App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: catsAppColorScheme,
        textTheme: defaultTextTheme,
        primaryColor: catsAppColorScheme.primary,
        backgroundColor: catsAppColorScheme.background,
      ),
      home: const HomePage(),
    );
  }
}
