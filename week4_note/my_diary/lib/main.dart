import 'package:flutter/material.dart';
import 'package:my_diary/pages/mydiary_home_page.dart';

void main() {
  runApp(MyDiary());
}

class MyDiary extends StatelessWidget {
  const MyDiary({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Diary',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color(0xffF8F7FC),
      ),
      home: MyDiaryHomePage(),
    );
  }
}