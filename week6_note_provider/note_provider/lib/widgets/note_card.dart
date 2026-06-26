import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onEditTap;
  final VoidCallback onDeleteTap;
  const NoteCard({
    super.key,
    required this.title,
    required this.content,
    required this.onEditTap,
    required this.onDeleteTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      child: Card(
        elevation: 5,
        shadowColor: Colors.purple.withValues(alpha: 0.3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 12),
              Text(
                content,
                style: const TextStyle(height: 1.5),
              ),
              const Divider(),
              // const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: onEditTap,
                    icon: Icon(Icons.edit_outlined),
                  ),
                  SizedBox(width: 12),
                  IconButton(
                    onPressed: onDeleteTap,
                    icon: Icon(Icons.delete_outline),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
