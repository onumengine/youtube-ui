import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/views/pages/home.dart';
import 'package:youtube/vms/home_vm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: ChangeNotifierProvider<HomeViewModel>.value(
        value: HomeViewModel(),
        child: const HomePage(),
      ),
    );
  }
}
