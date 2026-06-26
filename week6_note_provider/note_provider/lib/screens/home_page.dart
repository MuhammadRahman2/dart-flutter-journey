import 'package:flutter/material.dart';
import 'package:note_provider/providers/notes_provider.dart';
import 'package:note_provider/providers/theme_provider.dart';
import 'package:note_provider/screens/add_note_page.dart';
import 'package:note_provider/widgets/note_card.dart';
import 'package:provider/provider.dart';

class MyDiaryHomePage extends StatefulWidget {
  const MyDiaryHomePage({super.key});

  @override
  State<MyDiaryHomePage> createState() => _MyDiaryHomePageState();
}

class _MyDiaryHomePageState extends State<MyDiaryHomePage> {
  // final List<Map<String, String>> _notes = [];

  // void updateValue(index) async {
  //   final updatedNote = await Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (_) => AddNotePage(note: _notes[index])),
  //   );

  //   if (updatedNote != null) {
  //     setState(() {
  //       _notes[index] = updatedNote;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    debugPrint("provider rebuild");
    final provider = context.watch<NotesProvider>();
    return Scaffold(
      // backgroundColor: Thmed
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Row(
          children: [
            const Text(
              'My Diary',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 5),
            Text(provider.note.length.toString()),
          ],
        ),
        shadowColor: Colors.deepPurpleAccent.withValues(alpha: 0.3),
        actions: [
          Consumer<ThemeProvider>(
            builder: (context, provider, child) {
              return IconButton(
                onPressed: () => provider.toggleTheme(),
                icon: Icon(
                  provider.isDarkMode ? Icons.dark_mode : Icons.light_mode,
                ),
              );

              // Switch(
              //   value: provider.isDarkMode,
              //   onChanged: (value) {
              //     provider.toggleTheme();
              //     debugPrint(provider.themeMode.toString());
              //   },
              // );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: provider.note.isEmpty
            ? noData()
            : ListView.builder(
                itemCount: provider.note.length,
                itemBuilder: (context, index) {
                  final note = provider.note[index];
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

  Widget noData() {
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

  Future<void> addData(BuildContext context) async {
    final newNote = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => AddNotePage()),
    );

    if (newNote != null) {
      context.read<NotesProvider>().addNote(newNote);
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
                context.read<NotesProvider>().deleteNote(index);
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
    final notes = context.read<NotesProvider>().note;
    final updatedNote = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => AddNotePage(note: notes[index])),
    );

    // if (!mounted) return;

    if (updatedNote != null) {
      context.read<NotesProvider>().updateNote(index, updatedNote);
    }
  }
}
