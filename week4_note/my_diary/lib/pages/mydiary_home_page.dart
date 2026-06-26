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
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'My Diary',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        shadowColor: Colors.deepPurpleAccent.withValues(alpha: 0.3),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: _notes.isEmpty
            ? NoData()
            : ListView.builder(
                itemCount: _notes.length,
                itemBuilder: (context, index) {
                  final note = _notes[index];
                  return NoteCard(
                    title: note['title']!,
                    content: note['content']!,
                    onEditTap: () => _updateTheValue(index),
                    onDeleteTap: () => deleteValue(context, index),
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.deepPurple,
        onPressed: () => addData(context),
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text("New Note"),
      ),
    );
  }

  Future<void> addData(BuildContext context) async {
    final newNote = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddNotePage()),
    );

    if (newNote != null) {
      setState(() {
        _notes.add(newNote);
      });
    }
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

class NoData extends StatelessWidget {
  const NoData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.note_alt_outlined, size: 100, color: Colors.grey),
          SizedBox(height: 20),
          Text(
            "No notes yet",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "Tap New Note to start writing",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
