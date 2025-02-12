import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/Custom_text_felid.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/edit_notes_color_list.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.note});
  final NotesModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).featchAllNotes();
              Navigator.pop(context);
            },
            title: "Edit Notes",
            icon: Icons.check,
          ),
          const SizedBox(
            height: 42,
          ),
          CustomTextFelids(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFelids(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subtitle,
            maxLine: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          EditNotesColorList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
