import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Custom_text_felid.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 42,
          ),
          CustomTextFelids(),
        ],
      ),
    );
  }
}
