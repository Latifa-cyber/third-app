import 'package:flutter/material.dart';
import 'package:viva_app/Pages/Home.dart';
import 'package:viva_app/Auth Pages/Login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:viva_app/main_page.dart';
import 'firebase_options.dart';

main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _vivaApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Third App',
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      routes: {
        'login':(context) => Login(),
        'home':(context) => Home(),
      },

    );
  }
}
