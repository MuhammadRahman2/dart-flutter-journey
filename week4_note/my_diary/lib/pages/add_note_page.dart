import 'package:flutter/material.dart';

class AddNotePage extends StatefulWidget {
  final Map<String, String>? note;
  const AddNotePage({super.key, this.note});

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.note != null) {
      _titleController.text = widget.note!['title']!;
      _contentController.text = widget.note!['content']!;
    }
  }

  void _saveNote() {
    if (_titleController.text.isNotEmpty &&
        _contentController.text.isNotEmpty) {
      Navigator.pop(context, {
        "title": _titleController.text,
        "content": _contentController.text,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(widget.note == null ?"Add Note": "Edit Note")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _contentController,
              maxLines: 6,
              decoration: InputDecoration(
                labelText: 'Content',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _saveNote, child:  Text(widget.note == null ?"Save" : "Update",)),
          ],
        ),
      ),
    );
  }

  @override
void dispose() {
  _titleController.dispose();
  _contentController.dispose();
  super.dispose();
}

}
