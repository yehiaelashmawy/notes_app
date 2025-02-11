import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constans.dart';
import 'package:notes_app/cubits/notes_cubits/notes_cubit.dart';
import 'package:notes_app/views/widgets/add_note.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: FloatingActionButton(
            backgroundColor: kPrimaryColor,
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  context: context,
                  builder: (context) {
                    return const AddNote();
                  });
            },
            child: const Icon(Icons.add),
          ),
        ),
        body: const NotesViweBody(),
      ),
    );
  }
}
