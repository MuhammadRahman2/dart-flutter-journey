import 'package:flutter/material.dart';
import 'package:note_provider/providers/notes_provider.dart';
import 'package:note_provider/providers/theme_provider.dart';
import 'package:note_provider/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NotesProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child:  MyDiary(),
    ),
  );
}

class MyDiary extends StatelessWidget {
  const MyDiary({super.key});

  @override
  Widget build(BuildContext context) {
  final themeProvider = context.watch<ThemeProvider>();
    return MaterialApp(
      title: 'My Diary',
      debugShowCheckedModeBanner: false,
      themeMode: themeProvider.themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: MyDiaryHomePage(),
    );
  }
}