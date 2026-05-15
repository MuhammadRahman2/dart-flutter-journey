import 'package:flutter/material.dart';

class MusicDashboard extends StatelessWidget {
  const MusicDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(children: [Icon(Icons.menu), Spacer(), Icon(Icons.photo)]),
            Expanded(
              child: Card(
                color: Colors.amber,
                child: Center(child: Text('Music')),
              ),
            ),
            // SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Expanded(child: Container(color: Colors.orange)),
                  Expanded(child: Container(color: Colors.purple)),
                ],
              ),
            ),

            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.arrow_back, size: 40),
                  Text('title'),
                  Icon(Icons.play_arrow, size: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
