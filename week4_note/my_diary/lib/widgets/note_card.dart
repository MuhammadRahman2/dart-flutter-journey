import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onTap;
  final VoidCallback onLongTap;
  const NoteCard({super.key,required this.title,required this.content, required this.onTap, required this.onLongTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onLongPress: onLongTap,
      child: Card(
        elevation: 4,
        shadowColor: Colors.purple.withValues(alpha: 0.3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(title, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFF1C1B1F),
            ),
            ),
            const SizedBox(height: 8),
            Text(content,
                style: const TextStyle(color: Colors.black54),
              ),
            const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(Icons.edit, color: Colors.deepPurple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
