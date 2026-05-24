import 'package:flutter/material.dart';
import 'package:my_diary/pages/add_note_page.dart';
import 'package:my_diary/widgets/note_card.dart';

class MyDiaryHomePage extends StatefulWidget {
  const MyDiaryHomePage({super.key});

  @override
  State<MyDiaryHomePage> createState() => _MyDiaryHomePageState();
}

class _MyDiaryHomePageState extends State<MyDiaryHomePage> {
  final List<Map<String, String>> _notes = [];

  void updateValue(index) async {
    final updatedNote = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => AddNotePage(note: _notes[index])),
    );

    if (updatedNote != null) {
      setState(() {
        _notes[index] = updatedNote;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F2FA),
      appBar: AppBar(
        title: const Text(
          'Notebooks 🗒️',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.deepPurpleAccent.withValues(alpha: 0.3),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: _notes.isEmpty
            ? const Center(
                child: Text(
                  "No notes yet. Tap + to add one!",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              )
            : GridView.builder(
                itemCount: _notes.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 3 / 2,
                ),
                itemBuilder: (context, index) {
                  final note = _notes[index];
                  return NoteCard(
                    title: note['title']!,
                    content: note['content']!,
                    onTap: () => _updateTheValue(index),
                    onLongTap: () =>  deleteValue(context, index),
                    
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () async {
          final newNote = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNotePage()),
          );

          if (newNote != null) {
            setState(() {
              _notes.add(newNote);
            });
          }
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  void deleteValue(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Delete Note'),
          content: const Text("Are you sure ?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _notes.removeAt(index);
                });
                Navigator.pop(context);
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _updateTheValue(int index) async {
    final updatedNote = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => AddNotePage(note: _notes[index])),
    );

    if (updatedNote != null) {
      setState(() {
        _notes[index] = updatedNote;
      });
    }
  }
}
