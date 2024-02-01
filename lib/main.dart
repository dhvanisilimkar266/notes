import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/utils/routes.dart';
import 'package:notes_app/views/screens/home_page.dart';
import 'package:notes_app/views/screens/spleas_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.spleash,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        MyRoutes.spleash: (context) => SplashScreen(),
        MyRoutes.home: (context) => HomePage(),
      },
    );
  }
}
