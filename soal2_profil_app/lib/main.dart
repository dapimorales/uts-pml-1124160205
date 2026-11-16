import 'package:flutter/material.dart';
import 'screens/about_page.dart';
import 'screens/edit_profile_page.dart';
import 'screens/login_page.dart';
import 'screens/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme(bool isDark) {
    setState(() {
      _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    const seedColor = Color(0xFF1565C0);

    return MaterialApp(
      title: 'Profil Miles',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: seedColor,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: seedColor,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: _themeMode,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/profile': (context) => ProfilePage(
              isDarkMode: _themeMode == ThemeMode.dark,
              onToggleTheme: _toggleTheme,
            ),
        '/edit-profile': (context) => const EditProfilePage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}