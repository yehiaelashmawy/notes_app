import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/notes_ListView.dart';

class NotesViweBody extends StatefulWidget {
  const NotesViweBody({super.key});

  @override
  State<NotesViweBody> createState() => _NotesViweBodyState();
}

class _NotesViweBodyState extends State<NotesViweBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).featchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            CustomAppBar(
              title: 'Notes',
              icon: Icons.search,
            ),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
