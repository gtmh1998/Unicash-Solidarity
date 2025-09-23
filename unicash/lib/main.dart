import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:unicash/Login_Page.dart';
import 'package:unicash/Splash_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://gljfdduzkyuognlzppek.supabase.co',
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdsamZkZHV6a3l1b2dubHpwcGVrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTYyMjkwMTcsImV4cCI6MjA3MTgwNTAxN30.b78HGygM78ulh7byWugODBytvhrldhTiYV1shmJbMtA",
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assemblée Chrétienne',
      home: const SplashScreen(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => LoginPage(),
        '/user_home': (context) => LoginPage(), // Page d'accueil à définir
      },
    );
  }
}