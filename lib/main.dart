import 'package:flutter/material.dart';
// import 'row_widget.dart';
// import 'column_widget.dart';
// import 'first_widget.dart';
// import 'form_widget.dart';
import 'app_theme.dart';
import 'responsive_profile.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Praktikum Mobile Lanjut',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.deepPurple
//           ),
//           useMaterial3: true,
//       ),
//       home: const FormWidget(),
//       );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;

  void toggleTheme() {
    setState(() {
      themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Praktikum Mobile Lanjut',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      home: ResponsiveProfilePage(onThemeChanged: toggleTheme),
    );
  }
}