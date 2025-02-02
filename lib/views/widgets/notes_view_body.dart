import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';

class NotesViweBody extends StatelessWidget {
  const NotesViweBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
