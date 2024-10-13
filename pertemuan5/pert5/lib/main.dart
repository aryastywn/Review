import 'package:flutter/material.dart';
import 'package:pert5/pages/home_page.dart';
import 'package:pert5/pages/profile_page.dart';
import 'package:pert5/pages/settings_page.dart';
import 'package:pert5/pages/tab_bar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const TabBarPage(),
      routes: {
        "/HomePage" : (context) => const MyHomePage(),
        "/ProfilePage" : (context) => const MyProfilPage(),
        "/SettingsPage" : (context) => const MySettingsPage(),
      },
    );
  }
}
