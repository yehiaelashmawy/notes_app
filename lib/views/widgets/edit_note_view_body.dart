import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Custom_text_felid.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomAppBar(
            title: "Edit Notes",
            icon: Icons.check,
          ),
          SizedBox(
            height: 42,
          ),
          CustomTextFelids(hint: 'Title'),
          SizedBox(
            height: 24,
          ),
          CustomTextFelids(
            hint: 'Content',
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
