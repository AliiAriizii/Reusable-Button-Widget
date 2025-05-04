import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppButton Demo',
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          primary: Colors.teal,       // رنگ دکمه‌ها و AppBar
          onPrimary: Colors.white,    // رنگ نوشته روی دکمه
          background: Colors.white,   // رنگ پس‌زمینه
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
