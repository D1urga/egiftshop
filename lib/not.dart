import 'package:egift_shop/notcard.dart';
import 'package:flutter/cupertino.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),
          ],
        ),
      ),
    );
  }
}
