import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/Color_list_view.dart';
import 'package:notes_app/views/widgets/Custom_text_felid.dart';
import 'package:notes_app/views/widgets/custom_button.dart';

class AddNotesForme extends StatefulWidget {
  const AddNotesForme({
    super.key,
  });

  @override
  State<AddNotesForme> createState() => _AddNotesFormeState();
}

final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subTitle;

class _AddNotesFormeState extends State<AddNotesForme> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 42,
          ),
          CustomTextFelids(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFelids(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'Content',
            maxLine: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          const ColorsListView(),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formatedDateTime =
                        DateFormat('dd-mm-yyyy').format(currentDate);
                    var noteModel = NotesModel(
                        title: title!,
                        subtitle: subTitle!,
                        date: formatedDateTime,
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addnote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
